# Pipeline Engine

## Purpose

驅動整個 SDLC pipeline，決定「哪個 Agent 什麼時候可以跑」。本身不執行任何 Agent 的內部邏輯（那是 `agent-runner` 的職責），只負責排程與交接。

---

## Trigger

- 使用者提出新需求（啟動一輪完整 pipeline）
- 下游 Agent 打回上游（例如 Test Agent 發現缺陷、Review & Release Agent 給出 REJECTED），需要重新排程受影響的 Agent

---

## Process

1. **建立依賴圖**：讀取每個 `core/agents/*.md` 的 `Boundary → Read Access`，將其中列出的 `specs/*` 路徑視為該 Agent 的前置依賴。不手動維護一份寫死的順序表，依賴圖永遠從 Agent 定義動態推導，避免文件與實際執行順序不同步。
2. **判斷可執行的 Agent**：一個 Agent 只有在它 Read Access 中列出的所有 Required artifact 都已存在且已被 `validation-engine` 標記為 frozen 時，才可以被排入執行。
3. **平行處理**：依賴圖中沒有前後關係的 Agent 可以同時執行。實際依賴鏈為：

   ```
   Requirement Agent
     ↓
   UX/UI Agent ────────────┐（產出僅供參考，非硬性依賴）
     ↓                     │
   UI Spec Generator ←─────┘
     ↓
   Architecture Agent
     ↓
   API Agent
     ↓
   Data Agent（需要 openapi.yaml）
     ↓
   Security Agent（需要 openapi.yaml + data-model.md）
     ↓
   ┌─────────────────┬──────────────────┐
   Backend Code Agent   Frontend Code Agent（兩者互不依賴，可平行；
   （需 Security 完成）   Frontend 只需 API + UI Spec 完成，不需等 Data/Security）
   └─────────────────┴──────────────────┘
     ↓
   Test Agent
     ↓
   Review & Release Agent
   ```

   注意：`AGENT.md` 的 Full SDLC Workflow 圖把 API / Data / Security 畫成同一個平行區塊，但實際依賴圖並非如此（Data 依賴 API 的輸出，Security 依賴 API 與 Data 兩者），本引擎以此處的依賴圖為準。
4. **呼叫 agent-runner**：對每個可執行的 Agent，呼叫 `agent-runner` 執行其 Workflow。
5. **凍結產出**：Agent 執行完成且通過驗證後，將其 Write Access 範圍內的 artifact 標記為 frozen（`core/rules/ENGINE_RULES.md` Rule 3），下游只能讀取不能修改。
6. **處理打回**：若某 Agent 的產出被下游判定有問題（例如 Test Agent 的 Blocking Issue、Release Agent 的 REJECTED），解除受影響 artifact 的 frozen 狀態，重新排程對應的上游 Agent，並清除其下游所有已 frozen 但依賴該 artifact 的產出（避免下游帶著過期依賴繼續執行）。

---

## Failure Handling

- 若排程後發現循環依賴（A 依賴 B、B 也依賴 A），停止整條 pipeline 並回報，不嘗試猜測執行順序。
- 若某 Agent 長時間卡在「等待前置依賴」，回報缺少的具體 artifact 路徑，而非籠統回報「卡住了」。
- 若同一個 artifact 被兩個 Agent 同時嘗試寫入（違反 Ownership），拒絕其中一個寫入並回報衝突，不自動合併。

# Context Loader

## Purpose

在 Skill 執行前，依其宣告的 `Input`（Required / Optional）組裝實際內容，交給 `agent-runner` 傳入 Skill。本引擎只負責「找到並讀取」，不做任何內容轉換或思考。

---

## Trigger

由 `agent-runner` 在呼叫每個 Skill 之前呼叫。

---

## Process

1. 讀取目前要執行的 Skill 檔案的 `Input` 區塊。
2. 對每個 Required 項目：
   - 若是 `specs/*` 路徑，確認該 artifact 存在且已被 `validation-engine` 標記為 frozen，讀取其內容。
   - 若是中間產物（例如 Requirement Draft），讀取同一份草稿目前累積的內容。
   - 找不到則視為缺失，中斷組裝並回報給 `agent-runner`。
3. 對每個 Optional 項目，嘗試讀取；找不到則標記為「未提供」，不視為錯誤。
4. 若 Skill 的 `Input` 中列出 `pcp/*`，一併載入對應的 pcp 檔案作為背景脈絡。
5. 核對即將讀取的每個路徑是否落在呼叫方 Agent 的 `Boundary → Read Access` 範圍內；超出範圍的一律拒絕讀取，即使 Skill 本身宣告需要。
6. 組裝完成後，回傳給 `agent-runner`。

---

## Failure Handling

- Required 項目缺失：中止組裝，回報具體缺少的路徑，不以空值代替。
- 讀取到的 artifact 尚未 frozen（代表上游還在編輯中）：視為缺失處理，不讀取未定稿的內容。
- 要讀取的路徑超出呼叫方 Agent 的 Read Access 範圍：拒絕讀取並回報越界，不因為 Skill 端要求就放行。

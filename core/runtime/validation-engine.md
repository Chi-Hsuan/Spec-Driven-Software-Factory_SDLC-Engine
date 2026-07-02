# Validation Engine

## Purpose

在 Skill 產出 Output 後，依其 `Validation` 指向的 Schema 檢查產出是否合格。本引擎只負責「檢查」，不負責修正——驗證失敗一律退回給產出的 Skill，不代為修改內容。

---

## Trigger

由 `agent-runner` 在每個 Skill 執行完 Output 後呼叫。

---

## Process

1. 讀取該 Skill `Output` 指向的 Template，確認產出的章節結構是否與 Template 的 Document Shape 一致（結構層檢查）。
2. 讀取該 Skill `Validation` 指向的 Schema，取得其 `Machine Validation` 規則與 INVALID / WARNING 條件。
3. 逐條檢查產出內容：
   - 任一 INVALID 條件成立 → 判定為不合格。
   - 任一 WARNING 條件成立 → 記錄警告，但不阻擋交付。
4. 若產出引用了其他 artifact 的 id（例如 `component_id`、`operationId`），額外核對該 id 是否真實存在於對應來源文件，不允許引用不存在的 id。
5. 合格的產出標記為「待凍結」，交回 `agent-runner`；由 `pipeline-engine` 決定實際凍結時機。
6. 不合格的產出連同「違反哪一條 INVALID 規則」的具體說明，一併退回給 `agent-runner`。

---

## Failure Handling

- Schema 或 Template 檔案本身缺失：視為系統設定錯誤，中止驗證並回報，不跳過驗證直接放行。
- 產出違反多條 INVALID 規則：一次全部列出，不只回報第一條，避免 Skill 修正一次只能發現一個問題。
- 產出僅違反 WARNING 規則：允許通過，但警告內容必須隨產出一併傳遞下去，不可在後續流程中遺失。

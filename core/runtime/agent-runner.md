# Agent Runner

## Purpose

執行單一 Agent：依序呼叫該 Agent `Boundary → Allowed Skills` 中列出的 Skill，直到整個 `Workflow` 完成或失敗。`pipeline-engine` 決定「哪個 Agent 該跑」，本引擎決定「這個 Agent 內部怎麼跑」。

---

## Trigger

由 `pipeline-engine` 判定某個 Agent 的前置依賴已滿足時呼叫。

---

## Process

1. 讀取該 Agent 檔案的 `Workflow` 區塊，取得 Skill 呼叫順序。
2. 逐一執行每個步驟：
   a. 檢查即將呼叫的 Skill 是否存在於該 Agent 的 `Allowed Skills` 清單，不在清單內一律拒絕執行（即使 Workflow 描述中提及）。
   b. 呼叫 `context-loader`，依 Skill 定義的 `Input` 組裝實際內容。
   c. 執行 Skill：依其 `Capability` 指向的 Prompt 進行思考，再依 `Output` 指向的 Template 落地成 artifact。
   d. 呼叫 `validation-engine`，依 Skill 的 `Validation` 指向的 Schema 檢查產出。
   e. 驗證失敗則立即中止本 Agent 的執行（不繼續跑後續 Skill），回報給 `pipeline-engine`。
   f. 驗證通過則將 artifact 暫存為「本輪執行的候選產出」，繼續下一個 Skill。
3. 所有步驟成功後，把候選產出整批交回 `pipeline-engine`（由 pipeline-engine 決定何時正式凍結）。

---

## Failure Handling

- 呼叫了 `Allowed Skills` 以外的 Skill：視為越權，直接拒絕，回報「Agent Boundary 違規」而非嘗試執行。
- 任一步驟的 Input 缺少 Required 項目：中止並回報缺少的具體項目，不以 Optional 內容湊合執行。
- 任一步驟驗證失敗：中止整個 Agent（不是只跳過該步驟），因為後續 Skill 通常依賴前面步驟的產出。
- 同一個 Skill 因驗證失敗被重跑：沿用同一組 Input 重新執行，不自動修改 Input 或降低驗證標準來讓它通過。

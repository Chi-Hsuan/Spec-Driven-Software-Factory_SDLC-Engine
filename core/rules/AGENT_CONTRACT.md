# Agent Contract

每個 Agent 都遵循同一套執行合約（execution contract）。

---

## Responsibilities

每個 Agent 都有一個明確定義的職責。

Agent 不應執行超出自己領域範圍的任務。

---

## Inputs

Agent 只能使用已核准的上游產出物（upstream artifacts）。

Agent 絕不應在未明確記錄假設的情況下，自行推斷缺漏的需求。

---

## Outputs

每個 output 都必須：

- 具確定性（deterministic）
- 遵循對應的 schema
- 盡可能機器可讀（machine-readable）
- 可被下游 Agent 重複使用

---

## Boundaries

Agent 不能修改上游產出物。

Agent 不能越權處理其他 Agent 的職責。

Agent 不能跳過 pipeline 階段。

---

## Failure Handling

若缺少必要的輸入：

- 停止執行
- 回報缺漏的 artifact
- 不得捏造缺漏的規格

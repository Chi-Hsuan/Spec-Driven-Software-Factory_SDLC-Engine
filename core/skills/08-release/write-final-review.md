# Write Final Review

## Capability

依 traceability-matrix.md、test-report.md、security-review.md 的結論，做出最終的 Go/No-Go 發佈決策，產出決策紀錄而非報告。一旦做出 Decision 即視為不可變，情況變化需另開新的 final-review 檔案，不得修改舊檔。

思考邏輯依循 `core/prompts/release/final-review.prompt.md`。

---

## Input

Required

- traceability-matrix.md
- test-report.md
- security-review.md

Optional

- migration-plan.md

---

## Output

依 `core/templates/07-release/final-review.template.md` 撰寫 `specs/07-release/final-review.md`。

---

## Validation

依 `core/schemas/07-release/final-review.schema.md` 驗證，失敗時停止並回報：

- traceability-matrix.md 或 test-report.md 缺失，無法做出任何判斷
- 存在未標註的 Blocking Issue 卻嘗試給出 APPROVED 決策

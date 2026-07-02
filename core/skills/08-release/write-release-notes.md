# Write Release Notes

## Capability

依已核准的 final-review.md，撰寫面向終端使用者的 release notes，將內部技術追蹤脫鉤為使用者看得懂的語言。只在 Decision 為 APPROVED 或 CONDITIONAL APPROVAL 時執行；FR-ID / test_case_id 只能放在括號中做內部追溯，不對外暴露 module_id、operationId 等技術細節。

思考邏輯依循 `core/prompts/release/release-notes.prompt.md`。

---

## Input

Required

- final-review.md（Decision 與版本資訊）
- traceability-matrix.md（本次涵蓋的 FR-ID 範圍）

Optional

- migration-plan.md（若有 Breaking Changes）

---

## Output

依 `core/templates/07-release/release-notes.template.md` 撰寫 `specs/07-release/release-notes.md`。

---

## Validation

依 `core/schemas/07-release/release-notes.schema.md` 驗證，失敗時停止並回報：

- final-review.md 的 Decision 為 REJECTED（此時不應產出 release notes）
- 存在 Breaking Changes 但無法從 migration-plan.md 或既有 spec 得知使用者應如何因應

# Generate Traceability Matrix

## Capability

彙整所有 spec 的 id（FR-ID、screen_id、module_id、operationId、entity_id、test_case_id），建立 Requirement → UI → Design → API → Data → Test → Result 的完整追蹤。只做「對照」，不做判斷（Go/No-Go 屬於 `write-final-review` 的職責）。

思考邏輯依循 `core/prompts/release/traceability-matrix.prompt.md`。

---

## Input

Required

- srs.md（FR-ID）
- screen-spec.md（screen_id）
- system-design.md（module_id）
- openapi.yaml（operationId）
- data-model.md（entity_id）
- test-cases.md（test_case_id）
- test-report.md（Result）

---

## Output

依 `core/templates/07-release/traceability-matrix.template.md` 撰寫 `specs/07-release/traceability-matrix.md`。

---

## Validation

依 `core/schemas/07-release/traceability-matrix.schema.md` 驗證，失敗時停止並回報：

- 找不到 srs.md 或 test-report.md，無法建立任何一列
- 某個 id 在來源文件中找不到對應項目，但無法確認是否為刻意省略

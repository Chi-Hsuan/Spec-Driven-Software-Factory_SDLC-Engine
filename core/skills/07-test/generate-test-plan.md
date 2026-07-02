# Generate Test Plan

## Capability

依 srs.md、openapi.yaml、ui-spec.md、architecture.md 制定測試策略（test-plan.md），並將每個 Requirement 展開為可追溯的測試案例（test-cases.md）。屬於「規劃」階段，不撰寫自動化程式碼或執行測試（那是 `generate-e2e-test` 的職責）。

思考邏輯依循 `core/prompts/test/test-plan.prompt.md`。

---

## Input

Required

- srs.md（FR-ID 清單）
- openapi.yaml
- ui-spec.md
- architecture.md

---

## Output

- 依 `core/templates/06-test/test-plan.template.md` 撰寫 `specs/06-test/test-plan.md`
- 依 `core/templates/06-test/test-cases.template.md` 撰寫 `specs/06-test/test-cases.md`

---

## Validation

依 `core/schemas/06-test/test-plan.schema.md`、`test-cases.schema.md` 驗證，失敗時停止並回報：

- srs.md 沒有任何 FR-ID
- 某個高風險功能在 srs.md 中描述不足以設計出具體 test case

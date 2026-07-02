# Generate API Contract

## Capability

在 openapi.yaml 完成後，定義全站共通的 API 設計原則（api-design.md）與業務錯誤碼列舉（error-codes.md）。不重複列出 openapi.yaml 已定義的 endpoint 清單。

思考邏輯依循 `core/prompts/api/api-contract.prompt.md`。

---

## Input

Required

- openapi.yaml

Optional

- architecture.md

---

## Output

- 依 `core/templates/03-api/api-design.template.md` 撰寫 `specs/03-api/api-design.md`
- 依 `core/templates/03-api/error-codes.template.md` 撰寫 `specs/03-api/error-codes.md`

---

## Validation

依 `core/schemas/03-api/api-design.schema.md`、`error-codes.schema.md` 驗證，失敗時停止並回報：

- openapi.yaml 尚未定義任何 operationId 或 Error schema
- 同一個 error_code 被用於兩種不同情境

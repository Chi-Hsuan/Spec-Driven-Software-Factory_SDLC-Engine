# Write OpenAPI

## Capability

依 system-design.md 的 API Flow 定義撰寫 openapi.yaml，作為前後端唯一的 API 合約真實來源。不寫設計原則（`generate-api-contract` 的職責）、不列舉業務錯誤碼（error response 一律 `$ref` 共用 Error schema）、不畫跨服務流程（`generate-sequence-diagram` 的職責）。

思考邏輯依循 `core/prompts/api/openapi.prompt.md`。

---

## Input

Required

- system-design.md
- architecture.md

Optional

- ui-spec.md

---

## Output

依 `core/templates/03-api/openapi.template.yaml` 撰寫 `specs/03-api/openapi.yaml`。

---

## Validation

依 `core/schemas/03-api/openapi.schema.md` 驗證，失敗時停止並回報：

- system-design.md 沒有定義任何 API Flow
- 無法決定某個 operationId 該對應哪個 HTTP method

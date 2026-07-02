# OpenAPI Schema

## Machine Validation

- 必須是合法的 OpenAPI 3.0.x 文件
- 每個 path 的每個 method 必須有唯一的 `operationId`（全域唯一，camelCase，動詞開頭）
- 所有 4xx / 5xx response 必須 `$ref` 指向 `components/schemas/Error`，不可各自定義錯誤格式
- `components/securitySchemes` 必須存在且至少被一個 path 引用

INVALID 條件（任一成立即拒絕交付）：

- ❌ `operationId` 重複或缺失
- ❌ 任何 error response 沒有 `$ref` 到共用 `Error` schema
- ❌ path 使用動詞（例如 `/getUser`）而非資源名詞

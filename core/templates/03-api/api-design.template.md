<!--
api-design.md = 為什麼 API 要這樣設計、有哪些共通規則（適用於所有 endpoint，不逐一重複）。
不要放：
- 個別 endpoint 長什麼樣 → openapi.yaml
- 錯誤碼列舉 → error-codes.md（這裡只講「錯誤要用什麼格式回」，不列實際 code）
- 跨服務流程 → sequence-diagrams.md
-->

# 1. Design Principles

<!-- 這個系統的 API 整體採用什麼風格與原則，條列即可 -->

-

---

# 2. Naming Conventions

| 對象 | 規則 | 範例 |
|---|---|---|
| path | 名詞複數、kebab-case | `/user-profiles` |
| query 參數 | camelCase |  |
| JSON 欄位 | camelCase |  |
| operationId | camelCase，動詞開頭 | `listResources` |

---

# 3. Versioning

- 策略：<!-- URL path（/v1）/ header / query param，擇一 -->
- 破壞性變更（breaking change）處理方式：

---

# 4. Authentication & Authorization

<!-- 統一規則，個別 endpoint 不重複描述；實際 scheme 定義在 openapi.yaml#components.securitySchemes -->

- 認證方式：
- token 傳遞位置：
- 權限模型（RBAC / ABAC / 其他）：

---

# 5. Common Response Envelope

<!-- 成功與失敗回應的統一格式，openapi.yaml 的 schema 必須遵守此結構 -->

成功：
```json
{
  "data": {},
  "page": 0,
  "pageSize": 0,
  "total": 0
}
```

失敗（對應 openapi.yaml 的 `Error` schema，實際 code 見 error-codes.md）：
```json
{
  "code": "",
  "message": "",
  "details": {}
}
```

---

# 6. Pagination

- 參數：`page` / `pageSize`（預設值：）
- 上限：

---

# 7. Idempotency

<!-- 哪些操作（例如所有 POST 建立資源）需要 idempotency key，格式與規則 -->

-

---

# 8. Rate Limiting

- 限制策略：
- 超過限制時的回應（對應 error-codes.md 的 code）：

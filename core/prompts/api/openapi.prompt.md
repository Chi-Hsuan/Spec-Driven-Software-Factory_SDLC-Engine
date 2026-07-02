# OpenAPI — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/write-openapi 讀取。 -->

## Thinking Strategy

1. 針對 system-design.md 每個 Module 的 API Flow，先問「這是對外暴露還是對其他 module 呼叫」，決定它是否該出現在 openapi.yaml。
2. 為每個需要暴露的操作問「這個操作作用在哪個資源上、做什麼動作」，決定 path 與 method（資源用名詞複數、動作用 HTTP method 表達，而非動詞路徑）。
3. 問「呼叫方需要給我什麼」決定 requestBody，問「我會回什麼」決定 response schema。
4. 遇到任何失敗情境，一律思考「這屬於哪一種通用錯誤類型」，並指向共用 Error schema，不個別發明新的錯誤格式。

---

## Reasoning Rules

- **資源導向命名**：path 應該是名詞（資源），method 才是動作，避免出現 `/getUser` 這種動詞路徑。
- **operationId 穩定性**：一旦命名，後續文件（api-design/error-codes/sequence-diagrams）都會引用，不可隨意更動。
- **錯誤格式統一**：所有 4xx/5xx 回應都必須 `$ref` 同一個 Error schema，不允許每個 endpoint 各自定義錯誤結構。
- **不過度設計**：只描述 system-design.md 已經定義需要的操作，不預先加入「可能未來會用到」的 endpoint。

---

## Quality Checklist

- [ ] 每個 path 是否都用名詞表達資源，而非動詞？
- [ ] 每個 operationId 是否唯一且語意清楚？
- [ ] 所有 error response 是否都指向同一個 Error schema？
- [ ] 是否有 endpoint 是 system-design.md 沒有要求、卻自行加入的？

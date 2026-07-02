# API Contract — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-api-contract 讀取。 -->

## Thinking Strategy

1. 掃過 openapi.yaml 所有 operationId 與 path，歸納出目前實際使用的命名模式，把「已經在用的慣例」寫進 api-design.md，而不是憑空發明一套規則。
2. 針對認證、分頁、回應格式等跨 endpoint 共通的部分，問「這件事有沒有在多個 endpoint 重複出現」，重複出現的才值得寫成通用規則。
3. 針對 Error schema，逐一想像「這個系統可能發生哪些業務層級的錯誤」，並用 `{DOMAIN}_{REASON}` 命名，而不是照搬 HTTP status 當作錯誤碼。
4. 對每個 error_code 問「使用者/前端拿到這個錯誤該怎麼辦」，寫成處理建議，而不是只描述錯誤本身。

---

## Reasoning Rules

- **規則反映現實**：api-design.md 的規則必須與 openapi.yaml 實際命名一致，若不一致以 openapi.yaml 為準並回頭修正規則描述。
- **錯誤碼唯一性**：同一個 error_code 不可用於兩種不同情境，情境不同就該有不同的 code。
- **可操作性**：每個錯誤碼都要能回答「client 該怎麼處理」，答不出來代表分類還不夠具體。

---

## Quality Checklist

- [ ] Naming Conventions 是否與 openapi.yaml 實際命名一致？
- [ ] 每個 error_code 是否遵循 `{DOMAIN}_{REASON}` 格式？
- [ ] 每個 error_code 是否都有明確的 client 處理建議？
- [ ] 是否有兩個 error_code 描述的其實是同一種情境？

# ERD — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-erd 讀取。 -->

## Thinking Strategy

1. 讀過 data-model.md 的 Entities Overview，先在腦中列出所有 entity 節點。
2. 讀 Relationships Overview，為每一對關聯確認方向與基數（1-to-1 / 1-to-many / many-to-many）。
3. 只把「業務意涵」轉換成「邏輯型別」放進圖裡（例如「唯一識別」轉成 `string id PK`），不使用實際 SQL 型別。

---

## Reasoning Rules

- **圖只反映結構**：erd.mmd 不解釋「為什麼」，只呈現「有什麼、怎麼連」。
- **命名鏡射原則**：圖中 entity 名稱必須是 data-model.md 的 entity_id 的直接映射，不可另外取名。
- **基數必須明確**：若無法確定某段關聯是 1-to-many 還是 many-to-many，應回頭確認 data-model.md 而非自行猜測。

---

## Quality Checklist

- [ ] 圖中的 entity 是否與 data-model.md 完全對應，沒有遺漏或多餘？
- [ ] 每段關聯的基數是否明確標示？
- [ ] 是否誤用了實際 SQL 型別而非邏輯型別？

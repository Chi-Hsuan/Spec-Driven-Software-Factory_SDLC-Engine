# ERD Schema

## Machine Validation

- 必須是合法的 Mermaid `erDiagram` 語法
- 圖中每個 entity 名稱必須能對應回 `data-model.md` 的某個 `entity_id`
- 每段關聯必須標示基數（如 `||--o{`）
- 不得包含實際 SQL 型別（如 `varchar(255)`），只能使用邏輯型別

INVALID 條件（任一成立即拒絕交付）：

- ❌ 存在無法對應到 data-model.md 的 entity
- ❌ 關聯缺少基數標示
- ❌ 使用了實際 SQL 型別

# Schema — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/write-schema 讀取。 -->

## Thinking Strategy

1. 從 system-design.md 的 Data Flow Detail 與 openapi.yaml 的 schema 中，問「有哪些名詞代表系統要長期記住的東西」，這些就是 entity 候選。
2. 為每個 entity 問「它的哪些欄位是業務上必要的」，並區分「必填」與「可選」。
3. 問「這個 entity 跟哪個 entity 有關聯，關聯的基數是多少」，決定關聯設計。
4. 有了業務模型後，再問「這在關聯式資料庫裡該怎麼存」，決定實際型別、索引與約束。
5. 每次新增或修改 table，問「這個變更安全嗎、能不能回滾」，寫進 migration-plan.md。

---

## Reasoning Rules

- **業務先於實作**：先決定 data-model.md 的業務意涵，再決定 schema.sql 的技術實作，不可跳過業務層直接設計 DDL。
- **entity_id 一致性**：同一個 entity 在 data-model.md 與 schema.sql 的命名必須可對應（snake_case 轉換規則一致）。
- **不可逆變更需謹慎**：任何會刪除欄位或資料的變更，migration-plan.md 必須明確說明 rollback 方式。
- **索引依查詢需求**：只在明確有查詢或關聯需求時才加索引，不預先加上不確定會用到的索引。

---

## Quality Checklist

- [ ] 每個 entity 是否都能在 openapi.yaml 或 system-design.md 找到依據？
- [ ] entity 之間的關聯基數是否明確？
- [ ] schema.sql 的每個 table 是否都對應到一個 entity_id？
- [ ] 每個新建立的 table 是否都有對應的 migration 紀錄與 rollback 方式？

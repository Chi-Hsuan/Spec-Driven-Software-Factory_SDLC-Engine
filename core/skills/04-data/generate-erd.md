# Generate ERD

## Capability

依 data-model.md 繪製 Entity Relationship Diagram。只負責畫圖，entity 與欄位名稱必須與 data-model.md 的 entity_id 完全一致，不加入業務規則說明或實際 SQL 型別。

思考邏輯依循 `core/prompts/data/erd.prompt.md`。

---

## Input

Required

- data-model.md

---

## Output

依 `core/templates/04-data/erd.template.mmd` 撰寫 `specs/04-data/erd.mmd`。

---

## Validation

依 `core/schemas/04-data/erd.schema.md` 驗證，失敗時停止並回報：

- data-model.md 尚未定義任何 entity
- 兩個 entity 之間的關聯基數不明確

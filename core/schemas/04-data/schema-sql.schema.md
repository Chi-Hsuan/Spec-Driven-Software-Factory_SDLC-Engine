# Schema SQL Schema

## Machine Validation

- 每個 `CREATE TABLE` 必須有主鍵（PRIMARY KEY）
- table / column 命名使用 snake_case，且必須能對應回 `data-model.md` 的某個 `entity_id`
- 外鍵（FK）欄位必須有對應的 `REFERENCES` 約束
- 語法必須是合法可執行的 SQL（可被實際資料庫引擎解析，無語法錯誤）

INVALID 條件（任一成立即拒絕交付）：

- ❌ 存在無法對應到任何 `entity_id` 的 table
- ❌ FK 欄位缺少 REFERENCES 約束
- ❌ 語法錯誤

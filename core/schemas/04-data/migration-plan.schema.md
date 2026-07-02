# Migration Plan Schema

## Machine Validation

- 必須包含：Migration 原則、Rollback 策略、Migration 紀錄表、待執行 Migration（Backlog）
- Migration 紀錄表每列必須包含：migration_id、日期、說明、影響的 entity_id、breaking change、rollback 方式
- `migration_id` 必須符合命名規則 `{序號}_{動詞}_{對象}`，且與實際 migration 檔名一致
- 影響的 `entity_id` 必須能在 `data-model.md` 找到對應項目

INVALID 條件（任一成立即拒絕交付）：

- ❌ migration_id 格式不符或重複
- ❌ breaking change 為「是」但沒有填寫 rollback 方式
- ❌ 影響的 entity_id 對應不到 data-model.md

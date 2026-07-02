# Task List Schema

## Machine Validation

- `tasks` 為陣列，每筆 task 必須包含：`id`、`title`、`module_ref`、`adr_ref`、`depends_on`、`type`、`description`、`acceptance_criteria`、`status`
- `module_ref` 必須能對應 `system-design.md` 中存在的 `module_id`
- `type` 只能是 backend / frontend / data / infra / test
- `status` 只能是 todo / in-progress / done / blocked
- `depends_on` 引用的 `id` 必須存在於 `tasks` 清單中，且不可形成循環依賴

INVALID 條件（任一成立即拒絕交付）：

- ❌ `module_ref` 對應不到任何 `module_id`
- ❌ `depends_on` 形成循環依賴
- ❌ `acceptance_criteria` 為空陣列
- ❌ `type` 或 `status` 使用未定義的值

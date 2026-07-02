# Test Cases Schema

## Machine Validation

- 每列必須包含：test_case_id、requirement（FR-ID）、description、preconditions、steps、expected result、priority、type、automated
- `test_case_id` 格式為 `TC-{3位數}`，全域唯一
- `requirement` 必須是 `srs.md` 中存在的 FR-ID，不可留空或引用不存在的需求
- `type` 只能是 functional / edge / regression / negative

INVALID 條件（任一成立即拒絕交付）：

- ❌ `test_case_id` 重複或格式不符
- ❌ `requirement` 對應不到任何 srs.md 的 FR-ID
- ❌ `type` 使用未定義的值

# E2E Schema

## Machine Validation

- 每個測試標題必須以 `[TC-xxx]` 開頭，且該 test_case_id 必須存在於 `test-cases.md`
- 每個測試檔案對應的 test_case_id 不可重複撰寫兩次相同案例

INVALID 條件（任一成立即拒絕交付）：

- ❌ 測試標題缺少 `[TC-xxx]` 前綴
- ❌ 引用了 test-cases.md 中不存在的 test_case_id

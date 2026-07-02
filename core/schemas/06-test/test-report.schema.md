# Test Report Schema

## Machine Validation

- 必須包含六個章節：Run Meta、Coverage、Failed Tests、Known Issues、Blocking Issues、Recommendation
- Failed Tests 表格中的 `test_case_id` 必須存在於 `test-cases.md`
- 每次執行產出新紀錄，不可覆蓋既有 test-report.md 的歷史內容

INVALID 條件（任一成立即拒絕交付）：

- ❌ 缺少任一必要章節
- ❌ Failed Tests 引用了不存在的 test_case_id
- ❌ 本次輸出覆蓋了先前的執行紀錄而非新增

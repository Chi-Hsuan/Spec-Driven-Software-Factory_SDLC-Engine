# Test Plan Schema

## Machine Validation

- 必須包含六個章節：Objectives、Scope、Test Levels、Environment、Risk、Schedule
- Scope 的 In Scope 表格中每個 FR-ID 必須存在於 `srs.md`
- Risk 表格中標註 high 優先權的項目，必須能在 `test-cases.md` 找到至少一筆 priority 為 high 的對應 test case

INVALID 條件（任一成立即拒絕交付）：

- ❌ 缺少任一必要章節
- ❌ Scope 引用了不存在於 srs.md 的 FR-ID
- ❌ high 優先權風險項目在 test-cases.md 中找不到對應的 high priority case

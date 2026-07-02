# Error Codes Schema

## Machine Validation

- 每個 error_code 格式必須是 `{DOMAIN}_{REASON}`（全大寫、底線分隔）
- 每個 error_code 必須全域唯一，不可用於兩種不同情境
- 每列必須包含：error_code、http_status、message、觸發情境、client 處理建議
- Retry Policy 表格中列出的 error_code 必須都能在 Error Codes 表格找到對應項目

INVALID 條件（任一成立即拒絕交付）：

- ❌ error_code 格式不符 `{DOMAIN}_{REASON}`
- ❌ error_code 重複定義於不同情境
- ❌ 任一列缺少 client 處理建議

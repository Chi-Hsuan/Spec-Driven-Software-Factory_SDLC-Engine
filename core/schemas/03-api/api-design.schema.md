# API Design Schema

## Machine Validation

- 必須包含八個章節：Design Principles、Naming Conventions、Versioning、Authentication & Authorization、Common Response Envelope、Pagination、Idempotency、Rate Limiting
- Naming Conventions 表格必須涵蓋 path / query 參數 / JSON 欄位 / operationId 四種對象
- Common Response Envelope 必須同時展示成功與失敗兩種 JSON 範例，失敗範例的欄位需與 openapi.yaml 的 `Error` schema 一致

INVALID 條件（任一成立即拒絕交付）：

- ❌ 缺少任一必要章節
- ❌ Common Response Envelope 的失敗格式與 openapi.yaml 的 Error schema 不一致

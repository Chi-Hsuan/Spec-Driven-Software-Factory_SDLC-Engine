# System Design Schema

## Machine Validation

- 至少 1 個 `# Module: {module_id}` 區塊，`module_id` 必須能對應 `architecture.md` 的某個 `component_id`
- 每個 Module 必須包含：Meta（name、owns、responsibility、adr_ref）、內部設計、API Flow、Data Flow Detail、Integration
- API Flow 表格中的 `operationId` 欄位僅供標示方向，實際定義以 `specs/03-api/openapi.yaml` 為準（本階段允許尚未存在，先以暫定名稱標記）
- `adr_ref` 若非空，必須是符合 `adr/{4位數編號}-{短標題}.md` 命名格式的引用

INVALID 條件（任一成立即拒絕交付）：

- ❌ `module_id` 無法對應任何 `architecture.md` 的 `component_id`
- ❌ 缺少 Meta / 內部設計 / API Flow / Data Flow Detail / Integration 任一區塊
- ❌ 內容包含決策理由文字（應存在 adr/*.md）

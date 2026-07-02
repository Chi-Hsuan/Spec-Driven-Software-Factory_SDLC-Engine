# Screen Spec Schema

## Machine Validation

- 至少 1 個 `# Screen: {screen_id}` 區塊，`screen_id` 為 kebab-case 且全域唯一
- 每個 Screen 必須包含：Meta（name、route、figma_node_id、purpose）、Layout（region 表格）、Components Used（component_id 表格）、Screen States（loading/empty/error/success）、Data Dependencies（operationId 表格）、Navigation
- Layout 的 region 名稱只能是 header / sidebar / main / footer / modal
- Components Used 表格中的每個 `component_id` 必須能在 `component-spec.md` 找到對應區塊
- `figma_node_id` 不可為空

INVALID 條件（任一成立即拒絕交付）：

- ❌ `screen_id` 重複或非 kebab-case
- ❌ Meta 缺少 `figma_node_id`
- ❌ Components Used 引用了不存在的 component_id
- ❌ Layout 使用未定義的 region 名稱

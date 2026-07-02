# Component Spec Schema

## Machine Validation

- 至少 1 個 `# Component: {component_id}` 區塊，`component_id` 為 kebab-case 且全域唯一
- 每個 Component 必須包含：Meta（name、type、figma_node_id、description）、Props、State、Events、Style Tokens、Variants、Children、Accessibility 八個章節，即使內容為空表格也不可省略章節標題
- `type` 只能是 atom / molecule / organism / layout
- Style Tokens 的每個 token path 必須是 `core/templates/01-ui/design-tokens.template.json` 中存在的路徑，不可為寫死的數值（例如 `#FFFFFF` 或 `16px`）
- Children 表格中引用的 `component_id` 必須在本檔案中能找到對應區塊

INVALID 條件（任一成立即拒絕交付）：

- ❌ `component_id` 重複或非 kebab-case
- ❌ Style Tokens 出現寫死的數值而非 token path
- ❌ Children 引用了不存在的 component_id
- ❌ 八個必要章節有任一缺失

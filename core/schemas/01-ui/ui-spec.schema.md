# UI Spec Schema

## Machine Validation

- frontmatter 必須包含 `source_figma`、`version`、`generated_by`、`generated_at`、`design_tokens`
- Screens Index 表格中每個 `screen_id` 必須能在 `screen-spec.md` 找到對應的 `# Screen:` 區塊
- Component Library Index 表格中每個 `component_id` 必須能在 `component-spec.md` 找到對應的 `# Component:` 區塊
- Component Library Index 的 `type` 欄位只能是 `atom` / `molecule` / `organism` / `layout` 其中之一
- Traceability 章節必須存在且列出 screen-spec.md / component-spec.md / design-tokens.json 的來源對應

INVALID 條件（任一成立即拒絕交付）：

- ❌ Screens Index 或 Component Library Index 引用了不存在的 screen_id / component_id
- ❌ `type` 欄位使用未定義的值
- ❌ 缺少 frontmatter 任一必要欄位

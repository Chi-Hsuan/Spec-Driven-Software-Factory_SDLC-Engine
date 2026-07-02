# Design Tokens Schema

## Machine Validation

- 必須包含 `core/templates/01-ui/design-tokens.template.json` 定義的全部八個頂層分類：color、typography、spacing、radius、shadow、breakpoint、zIndex，以及 color 下的 text、status 子分類
- 不得新增 template 以外的頂層分類或子分類
- 每個 leaf 欄位可為空字串，但欄位本身不可刪除
- `color.*` 若非空，必須是有效色碼格式（如 `#RRGGBB`）

INVALID 條件（任一成立即拒絕交付）：

- ❌ 缺少任一 template 定義的分類或欄位
- ❌ 出現 template 以外的自訂分類
- ❌ `color.*` 欄位值不是有效色碼格式

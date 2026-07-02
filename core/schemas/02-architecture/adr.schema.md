# ADR Schema

## Machine Validation

- 檔名格式必須是 `{4位數編號}-{短標題}.md`
- 必須包含：Status、Date、Context、Decision、Alternatives Considered（至少 1 項）、Consequences（正面與負面影響皆需存在）
- `Status` 只能是 proposed / accepted / rejected / deprecated / `superseded by [adr-xxxx]` 其中一種
- Context 段落不可包含明確的解決方案文字（解決方案應只出現在 Decision）

INVALID 條件（任一成立即拒絕交付）：

- ❌ 檔名不符合命名格式
- ❌ Alternatives Considered 為空
- ❌ Consequences 只有正面影響、沒有任何負面影響或 trade-off
- ❌ `Status` 使用未定義的值

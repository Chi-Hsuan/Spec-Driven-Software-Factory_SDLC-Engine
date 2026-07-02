# Component Map Schema

## Machine Validation

- 至少 1 個 Page，且每個 Page 有 PageRoot
- 每個 component 必須包含：Component Name、Type（button / input / layout / modal）、Props（可為空但需存在）、State（可為空但需存在）、Events（若有互動）、Dependencies（API / 其他 component）
- 必須存在 Parent → Child 的 Component Tree 關係

INVALID 條件（任一成立即拒絕交付）：

- ❌ 任一 component 沒有 Type

WARNING 條件（不阻擋交付，但需標註）：

- ⚠ 無 hierarchy（Component Tree 關係缺失）

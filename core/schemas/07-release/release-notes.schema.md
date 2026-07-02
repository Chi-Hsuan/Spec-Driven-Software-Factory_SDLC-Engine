# Release Notes Schema

## Machine Validation

- 只能在對應 `final-review.md` 的 `Decision` 為 APPROVED TO RELEASE 或 CONDITIONAL APPROVAL 時產出
- 必須包含 Version Info、What's New、Bug Fixes、Breaking Changes、Migration Guide 五個章節
- 內容不得出現 `module_id`、`operationId`、`entity_id` 等內部技術詞彙；FR-ID 僅可出現在括號中
- 若 Breaking Changes 非空，Migration Guide 不可為空

INVALID 條件（任一成立即拒絕交付）：

- ❌ 對應 final-review.md 的 Decision 為 REJECTED
- ❌ 內容外露內部技術 id（非括號內的追溯用途）
- ❌ 存在 Breaking Changes 但 Migration Guide 為空

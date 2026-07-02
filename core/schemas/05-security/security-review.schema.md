# Security Review Schema

## Machine Validation

- 每個 threat-model.md 中的 Threat 都必須在本檔案中有對應結論（✅ Pass / ⚠ 部分缺口 / ❌ 未防護）
- 標記為 ⚠ 或 ❌ 的項目必須附上具體修正建議，不可只寫結論沒有建議
- Recommendations 章節不可為空（若所有項目皆 Pass，需明確寫「無」而非留空）

INVALID 條件（任一成立即拒絕交付）：

- ❌ threat-model.md 中的某個 Threat 沒有對應結論
- ❌ ⚠ 或 ❌ 項目缺少修正建議

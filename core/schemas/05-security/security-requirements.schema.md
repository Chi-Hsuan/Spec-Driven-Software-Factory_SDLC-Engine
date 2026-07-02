# Security Requirements Schema

## Machine Validation

- 每一項需求都必須是可直接實作、可驗證完成與否的具體描述（例如「JWT 需設定過期時間」），不可為抽象原則（例如「加強安全性」）
- 每一項需求都必須能追溯回 security-review.md 中的某條 Recommendation
- 章節需涵蓋 security-review.md 中出現過的所有防護面向（Authentication / Authorization / Encryption 等），缺一不可

INVALID 條件（任一成立即拒絕交付）：

- ❌ 存在無法追溯回 security-review.md 的需求項目
- ❌ 需求描述過於抽象，無法直接實作或驗證

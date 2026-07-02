# User Flow Schema

## Machine Validation

- 至少 1 個 Flow
- 每個 Flow 必須包含：Flow 名稱、步驟（Start → End）、成功路徑（Happy Path）、失敗路徑（Error Path）；分支條件若存在也需列出
- 每個 step 必須標註為「使用者行為」或「系統行為」其中之一，且有明確順序

INVALID 條件（任一成立即拒絕交付）：

- ❌ 無任何 Flow
- ❌ Flow 沒有任何 step
- ❌ step 未標註行為主體

WARNING 條件（不阻擋交付，但需標註）：

- ⚠ 無 success path

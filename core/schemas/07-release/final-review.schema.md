# Final Review Schema

## Machine Validation

- 必須包含 Meta、System Readiness、Risks、Decision 四個章節
- System Readiness 至少涵蓋 Functional、Security、Performance 三個面向，每項為 ✔ Pass / ⚠ Acceptable / ✘ Fail
- `Decision` 只能是 APPROVED TO RELEASE / REJECTED / CONDITIONAL APPROVAL（附條件）三者之一
- 若任一 System Readiness 為 ✘ Fail，`Decision` 不可為 APPROVED TO RELEASE
- 一旦本檔案已存在且有 Decision，不得覆寫，須新增新檔

INVALID 條件（任一成立即拒絕交付）：

- ❌ 缺少必要章節
- ❌ 存在 ✘ Fail 卻給出 APPROVED TO RELEASE
- ❌ Decision 使用未定義的值
- ❌ 嘗試覆寫已有 Decision 的既有檔案

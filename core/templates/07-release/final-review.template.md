<!--
final-review.md 的本質：不是報告，是「決策紀錄」（decision record）。
不要放：
- 測試細節本身 → test-report.md（這裡只引用結論，例如 "unit 100% pass"）
- 需求逐項追蹤 → traceability-matrix.md（這裡只做整體判斷，不逐條列）
- 安全弱點細節 → 05-security/security-review.md（這裡只引用結論）
一旦做出 Decision，不要事後修改本檔；若情況變化需重新審查，另開一份新的 final-review。
-->

# Meta

- Build / commit：
- 日期：
- Reviewer：
- 對應 release-notes.md 版本：

---

# System Readiness

<!-- ✔ Pass / ⚠ Acceptable（有已知風險但可接受）/ ✘ Fail；理由需引用來源文件的結論，不重新展開細節 -->

### Functional
✔ Pass
<!-- 來源：06-test/test-report.md#Coverage -->

### Security
✔ Pass
<!-- 來源：05-security/security-review.md -->

### Performance
⚠ Acceptable
<!-- 來源：06-test/test-report.md，附簡短理由 -->

### Data / Migration
✔ Pass
<!-- 來源：04-data/migration-plan.md -->

---

# Risks

<!-- 已知但決定接受的風險，需說明「為什麼可以接受」，而非只列問題本身 -->

- Rate limit 未壓測極端情境

---

# Decision

<!-- APPROVED TO RELEASE / REJECTED / CONDITIONAL APPROVAL（需附條件） -->

✔ APPROVED TO RELEASE

### 理由
-

### 若為 CONDITIONAL，需滿足的條件
-

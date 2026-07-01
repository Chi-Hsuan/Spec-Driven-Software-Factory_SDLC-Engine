<!--
test-cases.md = 驗證需求（case-level），一定要 Trace 到 Requirement（srs.md 的 FR-ID）。
不要放：
- 整體測試策略 / 範圍 → test-plan.md
- 自動化程式碼 → e2e/
- 執行結果（pass/fail） → test-report.md（這裡只定義「應該發生什麼」，不記錄「實際發生了什麼」）
-->

# Test Cases

| test_case_id | requirement（FR-ID） | description | preconditions | steps | expected result | priority | type | automated |
|---|---|---|---|---|---|---|---|---|
| `TC-001` | `FR-001` | 登入成功 | 使用者已註冊 | 1. 開啟登入頁 2. 輸入正確帳密 3. 送出 | 導向 Dashboard | high | functional | `e2e/login.spec.ts` |

<!--
欄位規則：
- test_case_id：TC-{3位數}，全域唯一
- requirement：必須是 srs.md 中存在的 FR-ID，禁止填無對應需求的 test case
- type：functional / edge / regression / negative
- automated：填 "no" 或對應 e2e/ 底下的測試檔路徑
-->

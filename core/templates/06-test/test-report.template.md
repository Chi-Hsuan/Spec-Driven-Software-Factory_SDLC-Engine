<!--
test-report.md = 執行結果（execution-level），回答「實際跑起來發生了什麼」。
不要放：
- 測試策略 → test-plan.md
- test case 定義本身 → test-cases.md（這裡只引用 test_case_id，不重新描述 case 內容）
每次執行（每個環境 / 每個 build）都應該產出新的 test-report.md 或新增一筆紀錄，不覆蓋歷史資料。
-->

# 1. Run Meta

- 日期：
- 環境（對應 test-plan.md#Environment）：
- Build / commit：

---

# 2. Coverage

| test level | 總數 | Passed | Failed | Skipped | 涵蓋率 |
|---|---|---|---|---|---|
| unit |  |  |  |  |  |
| integration |  |  |  |  |  |
| e2e |  |  |  |  |  |

---

# 3. Failed Tests

| test_case_id | 失敗原因 | log / screenshot | 影響的 FR-ID |
|---|---|---|---|
|  |  |  |  |

---

# 4. Known Issues

<!-- 已知但本輪不修的問題，需附上原因或追蹤 ticket -->

| 問題 | 影響範圍 | 追蹤 |
|---|---|---|
|  |  |  |

---

# 5. Blocking Issues

<!-- 會阻擋 release 的問題，對應 07-release/final-review.md 會讀取此區塊 -->

-

---

# 6. Recommendation

<!-- 是否建議放行（go / no-go），以及理由 -->

-

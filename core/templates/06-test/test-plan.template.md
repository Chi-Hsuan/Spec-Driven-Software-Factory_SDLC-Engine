<!--
test-plan.md = 測試策略（strategy-level），回答「要測什麼、測到什麼程度、用什麼方式測」。
不要放：
- 個別 test case 內容 → test-cases.md 的職責
- 實際執行結果 → test-report.md 的職責
-->

# 1. Objectives

<!-- 這一輪測試要達成什麼目標，條列即可 -->

-

---

# 2. Scope

<!-- 對應 srs.md 的 FR-ID / NFR，此處只列範圍，不展開驗證細節 -->

### In Scope
| FR-ID | 說明 |
|---|---|
|  |  |

### Out of Scope
-

---

# 3. Test Levels

| level | 涵蓋範圍 | 負責 | 工具 |
|---|---|---|---|
| unit |  | backend/frontend code agent |  |
| integration |  | backend code agent |  |
| e2e | 對應 screen-spec.md 的使用者流程 | test agent |  |

---

# 4. Environment

| 環境 | 用途 | 資料狀態 |
|---|---|---|
| local |  | mock |
| staging |  | 匿名化資料 |

---

# 5. Risk

<!-- 高風險項目要提高測試優先權，對應 FR-ID / entity_id -->

| 風險項目 | 影響 | 對應 FR-ID / entity_id | 優先權 |
|---|---|---|---|
|  |  |  | high |

---

# 6. Schedule

| 里程碑 | 日期 | 產出 |
|---|---|---|
|  |  | test-cases.md 完成 |
|  |  | e2e 自動化完成 |
|  |  | test-report.md 產出 |

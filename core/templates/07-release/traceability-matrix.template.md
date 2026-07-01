<!--
traceability-matrix.md = 整個 System 最重要的「證據文件」：Spec → Implementation → Test → Result 的完整追蹤。
不要放：
- 判斷 / 決策 → final-review.md（這裡只列「有沒有對得起來」，不做 go/no-go 判斷）
- 詳細測試步驟或錯誤 log → test-cases.md / test-report.md（這裡只放 test_case_id 與結果）
規則：
- 每一列代表一個 FR-ID 的完整追蹤鏈，缺任何一欄都必須留空並標記，不可省略該列
- 所有 id 必須是各自來源文件中真實存在的 id（FR-ID / screen_id / module_id / operationId / entity_id / test_case_id）
-->

# Traceability Matrix

| Requirement（FR-ID） | UI（screen_id） | Design（module_id） | API（operationId） | Data（entity_id） | Test（test_case_id） | Result |
|---|---|---|---|---|---|---|
| `FR-001` | `screen-login` | `comp-api` | `POST /login`（loginUser） | `entity-user` | `TC-001` | PASS |

<!-- Result 只能是 PASS / FAIL / NOT_TESTED，NOT_TESTED 的列必須在 final-review.md 的 Risks 區塊被提及 -->

---

# Coverage Summary

| 項目 | 總數 | 已追蹤 | 缺口 |
|---|---|---|---|
| Requirement (FR-ID) |  |  |  |
| API (operationId) |  |  |  |
| Test (test_case_id) |  |  |  |

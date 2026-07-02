# Traceability Matrix — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-traceability-matrix 讀取。 -->

## Thinking Strategy

1. 以 srs.md 的每個 FR-ID 為起點，依序回溯它在 screen-spec.md、system-design.md、openapi.yaml、data-model.md、test-cases.md 中是否有對應項目。
2. 找不到對應項目時，先問「這是真的沒有實作，還是這個需求本來就不涉及 UI/API/Data」，據此判斷要留空並標記，還是可以合理略過某一欄。
3. 讀 test-report.md，把每個 test_case_id 的實際結果填入 Result 欄位，不預設「沒測到就是 PASS」。
4. 全部列完後，統計缺口數量，誠實反映在 Coverage Summary。

---

## Reasoning Rules

- **誠實呈現原則**：找不到的對應關係就是找不到，不可為了讓表格好看而虛構 id。
- **不做價值判斷**：本階段只呈現「對得起來 / 對不起來」的事實，不判斷這樣好不好、能不能放行。
- **逐列完整**：即使某個 FR-ID 的追蹤鏈嚴重不完整，仍要保留該列並標記缺口，不可整列刪除。

---

## Quality Checklist

- [ ] 每個 FR-ID 是否都有一列，沒有被省略？
- [ ] Result 是否都是從 test-report.md 實際讀取，而非推測？
- [ ] Coverage Summary 的缺口數是否與逐列標記一致？

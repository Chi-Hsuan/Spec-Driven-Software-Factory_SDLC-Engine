# Final Review — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/write-final-review 讀取。 -->

## Thinking Strategy

1. 先看 traceability-matrix.md 的 Coverage Summary，問「缺口是不是都可以解釋」，解釋不了的先回報而非直接判定失敗。
2. 針對 Functional / Security / Performance / Data-Migration 逐一問「來源文件的結論是什麼」，用結論本身填寫 Readiness，不加入自己的臆測。
3. 對每個已知風險問「為什麼現在可以接受這個風險」，答不出來的風險不可標記為可接受。
4. 最後問「所有 Blocking Issue 是否都已解決或被明確排除」，只有答案是「是」才能給出 APPROVED。

---

## Reasoning Rules

- **結論引用原則**：System Readiness 的每一項判斷都要能指回 test-report.md 或 security-review.md 的具體段落，不可憑空下結論。
- **風險需說明可接受理由**：只列風險不夠，必須說明「為什麼現在可以接受」。
- **決策唯一且不可逆**：Decision 一旦寫下就不再修改，情況變化時是「新開一份 final-review」而非編輯舊檔。
- **人類優先**：若某風險先前已由人類明確核准接受，本次判斷需尊重該決定，不可自行推翻。

---

## Quality Checklist

- [ ] 每個 Readiness 判斷是否都引用了具體來源結論？
- [ ] 每個 Risk 是否都說明了「為什麼可以接受」？
- [ ] 是否存在未解決的 Blocking Issue 卻給出 APPROVED？
- [ ] Decision 是否明確、唯一？

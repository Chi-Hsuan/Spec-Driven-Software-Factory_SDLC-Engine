# Security Checklist — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/security-checklist 讀取。 -->

## Thinking Strategy

1. 逐一走過 threat-model.md 的每個 Threat，問「目前的設計有沒有東西可以擋住這個攻擊」。
2. 若有，標記為 Pass；若不確定或明顯沒有，標記為缺口並在 security-review.md 提出具體修正建議（而非只說「需要加強」）。
3. 把每條修正建議轉成「一句話講清楚要做什麼」的需求，寫進 security-requirements.md，確保 Backend Code Agent 不需要再回頭理解威脅脈絡。
4. 針對每個缺口問「這個問題如果不修，會不會擋住這次 release」，標註是否為 blocking issue。

---

## Reasoning Rules

- **逐項對照**：不可整批略過威脅清單，每個 Threat 都要有明確結論（Pass / 缺口 / 不適用）。
- **建議必須可執行**：修正建議要具體到「加什麼機制、擋什麼行為」，不能只是重申問題。
- **需求與審查分離**：security-review.md 講「現況與理由」，security-requirements.md 只講「要做什麼」，兩者不可混寫。
- **人類決策優先**：若某風險先前已由人類明確核准接受，不得在此自行推翻該決定。

---

## Quality Checklist

- [ ] threat-model.md 的每個 Threat 是否都有對應結論？
- [ ] 每條修正建議是否具體可執行？
- [ ] security-requirements.md 的每一項是否不需要額外背景就能被實作？
- [ ] 是否已標註哪些缺口屬於 blocking issue？

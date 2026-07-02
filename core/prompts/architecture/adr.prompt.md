# ADR — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/write-adr 讀取。 -->

## Thinking Strategy

1. 先問「不做這個決策會發生什麼問題」，把 Context 寫清楚，且不要在描述問題時就順便寫出答案。
2. 列出至少一個被否決的方案，並問「當初為什麼沒選它」，這比只寫選中的方案更能保留脈絡。
3. 用一句話講清楚 Decision，避免模糊或留有多種解讀空間。
4. 分別列出 Decision 帶來的正面影響與負面影響 / trade-off，兩者都要誠實面對，不能只寫優點。
5. 若這是推翻既有決策，先找到舊 ADR 編號，思考新舊決策的差異點在哪，而不只是重寫一遍。

---

## Reasoning Rules

- **Context 不可預告答案**：Context 段落若已經透露出結論，代表沒有把「問題」和「決定」分開寫。
- **決策不可變**：一旦 ADR 核准，之後只能新增新 ADR 並標註 superseded，不可回頭編輯舊檔內容。
- **後果誠實原則**：Consequences 必須包含至少一項負面影響或 trade-off，若想不到任何代價，代表這個決策可能還沒被充分思考。
- **一檔一決策**：不要把兩個獨立的決策塞進同一份 ADR。

---

## Quality Checklist

- [ ] Context 是否只描述問題，沒有預先寫出解法？
- [ ] Alternatives Considered 是否至少有一項？
- [ ] Consequences 是否同時包含正面與負面影響？
- [ ] 若為推翻決策，舊 ADR 是否已標註 superseded？

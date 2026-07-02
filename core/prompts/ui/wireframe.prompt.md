# Wireframe — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/write-wireframe 讀取。 -->

## Thinking Strategy

1. 針對 user-flow.md 的每個步驟，先問「這一步發生在哪個畫面」，把步驟群組成 Page。
2. 為每個 Page 問「使用者一眼要先看到什麼」，決定 Header / Main / Sidebar 等分區的優先順序。
3. 把每個分區內要放的內容拆成 Section，並描述其目的（而非外觀）。
4. 檢查同一個 Page 是否對應到 user-flow.md 中的多個步驟，若是則需涵蓋所有相關步驟的畫面需求。

---

## Reasoning Rules

- **結構優先於視覺**：這階段只決定「有哪些區塊、彼此相對位置」，不決定顏色、字體、間距等視覺細節。
- **一個 Page 一個目的**：若一個 Page 承載太多不相關的目的，考慮拆成多個 Page。
- **不得省略區塊圖**：Layout 必須以結構化的區塊圖（block-beta）呈現，不可只用文字描述。

---

## Quality Checklist

- [ ] 每個 Page 是否都能對應回 user-flow.md 的至少一個步驟？
- [ ] Layout 是否用結構化區塊圖呈現，而非純文字？
- [ ] 是否誤將顏色、字體等視覺細節寫進 wireframe？

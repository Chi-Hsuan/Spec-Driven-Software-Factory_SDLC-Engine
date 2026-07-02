# Component Map — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-component-map 讀取。 -->

## Thinking Strategy

1. 針對 wireframe.md 的每個 Page，先定義 PageRoot，再問「這個畫面由哪些可辨識的區塊組成」，把每個區塊視為候選 component。
2. 為每個候選 component 判斷型態：是可互動元素（button/input）、容器（layout）、或彈出層（modal）。
3. 問「這個 component 需要外部傳入什麼資訊」，草擬 Props；問「它自己需要記住什麼」，草擬 State。
4. 問「使用者跟它互動時會發生什麼」，草擬 Events。
5. 問「這個 component 在其他畫面是否會重複出現」，判斷是否可重用。

---

## Reasoning Rules

- **型態單一原則**：一個 component 只能有一個主要型態分類，若同時具備多種特性，考慮拆成父子 component。
- **欄位不可省略**：Props / State / Events 就算內容為空，欄位本身也要保留，不可整段刪除。
- **樹狀關係優先**：先建立 Parent → Child 關係，再補細節，避免組件關係混亂。
- **草案性質**：本階段產出僅供 UI Spec Generator 參考，不需要與 Figma 完全一致。

---

## Quality Checklist

- [ ] 每個 Page 是否都有 PageRoot 與 Child Components 樹狀關係？
- [ ] 每個 component 是否都有明確型態？
- [ ] Props / State / Events 欄位是否都保留（即使為空）？
- [ ] 是否已標註跨頁可重用性？

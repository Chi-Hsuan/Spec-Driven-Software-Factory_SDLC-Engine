# Architecture — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/write-architecture 讀取。 -->

## Thinking Strategy

1. 先問「這個系統跟外部世界的邊界在哪」，列出所有使用者角色與外部系統，定義 System Context。
2. 依 srs.md 的功能群組，問「哪些功能天生應該放在一起、哪些應該分開」，切出 Major Components，避免切得過細或過粗。
3. 為每個 component 問「它擁有什麼、不擁有什麼」，避免兩個 component 對同一件事都宣稱擁有權。
4. 只在元件之間畫資料流向，不深入元件內部。
5. 針對每個 Major Component，展開內部設計時問「這個模組要怎麼跟其他模組溝通」，決定 API Flow 與 Integration 方式。
6. 遇到「有兩個以上合理方案、選哪個會影響後續」的節點，先標記為待決策，不在這裡直接寫下理由（那是 write-adr 的職責）。

---

## Reasoning Rules

- **邊界不重疊原則**：任兩個 component 的 owns 範圍不可重疊，若重疊代表切分方式有問題。
- **穩定性優先**：component_id / module_id 一旦定義應盡量穩定，因為下游多份文件會引用它。
- **只講事實與結構，不講理由**：architecture.md / system-design.md 只描述「長什麼樣」，不描述「為什麼這樣設計」。
- **不深入實作細節**：本階段不寫程式碼層級的細節，也不拆解實作步驟。

---

## Quality Checklist

- [ ] 每個 Major Component 是否都有清楚的 owns / does not own？
- [ ] Data Flow Overview 是否只到元件層級，沒有深入元件內部？
- [ ] 是否有需要決策的節點被直接寫死答案，而非交給 write-adr？
- [ ] component_id 與 module_id 是否一致？

# Extract Design Tokens — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/extract-design-tokens 讀取。 -->

## Thinking Strategy

1. 先掃過 Figma 的所有 color styles，問「這個顏色被重複使用嗎」，被大量重用的才視為 token，一次性用色可忽略。
2. 針對 text styles，拆解成 fontFamily / fontSize / fontWeight / lineHeight 四個獨立面向，而不是整組當成一個不可分割的樣式。
3. 針對間距，觀察是否存在一致的數值尺度（如 4/8/16/24px），若有規律則歸納為 spacing scale，而非逐一列點。
4. 若某個 token 分類（如 breakpoint）在 Figma 中沒有直接定義，依專案慣例合理推斷，但需明確標記為「推斷」而非「來自 Figma」。

---

## Reasoning Rules

- **重用性判準**：只有被多處使用的樣式數值才值得成為 token，避免 token 清單膨脹成流水帳。
- **分類單一原則**：一個數值只能歸屬一個 token 分類，不可同時出現在 color 與 shadow 底下。
- **誠實標記來源**：Figma 未明確定義的欄位，寧可留空並記錄，也不可憑空捏造數值。
- **不得新增分類**：只能使用 `design-tokens.template.json` 已定義的分類，不可自行擴充新的頂層分類。

---

## Quality Checklist

- [ ] 每個 token 分類是否都已檢視（即使結果為空）？
- [ ] 是否有數值同時被歸到兩個分類？
- [ ] 無法從 Figma 取得的欄位是否已誠實標記，而非隨意填入？

# Figma Parse — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/figma-parse 讀取。 -->

## Thinking Strategy

1. 先問「這個檔案裡，哪些 frame 是真正的畫面（screen），哪些只是元件庫或草稿」，過濾掉非畫面節點。
2. 針對每個畫面 frame，問「它由哪些可重用的視覺單元組成」，逐層拆出 component 候選。
3. 針對每個 component，比對其 variant，判斷是同一個 component 的不同狀態，還是根本是不同的 component。
4. 若 UX/UI Agent 的產出物與 Figma 不一致，先確認是否為設計已經更新但文件未同步，若是則以 Figma 為準並記錄差異，而非直接忽略。
5. 為每個保留下來的 screen/component 記下它在 Figma 中的原始節點 id。

---

## Reasoning Rules

- **Figma 優先原則**：任何與 Figma 內容衝突的參考資料，一律以 Figma 為準。
- **忠實轉譯，不重新設計**：只描述 Figma 已經存在的結構，不得因為覺得「這樣設計比較好」而更動。
- **節點可追溯**：每個被辨識出的 screen/component 都必須能回指到唯一的 Figma 節點，若對應不到，代表判斷有誤需重新檢視。
- **命名去除視覺雜訊**：組件命名應反映其功能角色，而非 Figma 圖層裡的隨意命名（如 "Frame 42"）。

---

## Quality Checklist

- [ ] 是否每個 screen/component 都有唯一可追溯的 figma_node_id？
- [ ] 是否誤把非畫面用途的 frame（如草稿、圖示庫）當成 screen？
- [ ] 與 UX/UI Agent 產出物的差異是否已記錄，而非靜默覆蓋？
- [ ] 是否忠實呈現 Figma 內容，沒有加入自己的設計判斷？

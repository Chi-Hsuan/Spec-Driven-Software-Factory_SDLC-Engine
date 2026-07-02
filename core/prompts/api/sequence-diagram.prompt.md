# Sequence Diagram — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-sequence-diagram 讀取。 -->

## Thinking Strategy

1. 從 openapi.yaml 挑選 operationId 時，先問「這個操作觸發後，會不會呼叫超過一個 module 或外部服務」，只有會的才需要畫 sequence diagram。
2. 針對選中的 operationId，讀 system-design.md 的 Integration 區塊，列出參與的 module 順序。
3. 依呼叫順序畫出 Client → Module → Module/DB → Client 的流程，並在每一步標註可能失敗的情境。
4. 針對每個可能失敗的步驟，回頭對照 error-codes.md（若已存在）標上對應的 error_code。

---

## Reasoning Rules

- **只畫真正跨服務的流程**：單一 module 內部處理完成的操作不需要畫 sequence diagram，那已經在 system-design.md 的 API Flow 表達過。
- **步驟對應真實呼叫**：圖中每一步都必須對應 system-design.md 中實際存在的 Integration 關係，不可憑空想像呼叫路徑。
- **失敗情境不可省略**：至少要標出一種可能失敗的分支，完全沒有失敗可能的流程通常代表分析不夠深入。

---

## Quality Checklist

- [ ] 這個 Flow 是否真的涉及多個 module，而非可以用 system-design.md 的 API Flow 表達就好？
- [ ] 圖中的呼叫順序是否與 system-design.md 的 Integration 一致？
- [ ] 是否至少標註一個可能失敗的步驟？

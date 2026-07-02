# SRS — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/write-srs 讀取。 -->

## Thinking Strategy

1. 先掃過整份 Requirement Draft，確認是否還有未解決的 Gap；若有，先判斷它能否被歸類為「假設」或「限制」，不能的話必須停下回報，而不是假裝沒看到。
2. 為每個 Functional Requirement Candidate 分配 FR-ID 時，依出現順序遞增編號；若是需求變更，先比對 Existing SRS，沿用相同概念的既有編號。
3. 檢查每個 FR-ID 是否都有至少一條 User Story 與一組 Acceptance Criteria，若沒有，回到候選項目本身找原因，而不是勉強拼湊。
4. 將 Non-Functional Requirement Candidates 歸位到 Performance / Security / Scalability / Reliability 四個既定章節，不新增章節。
5. 最後檢查整份文件是否「不需要口頭補充就能被下一個 Agent 理解」。

---

## Reasoning Rules

- **編號穩定原則**：FR-ID 一旦分配，即使後續內容修訂也不可更換編號或重複使用於不同需求。
- **假設 vs 限制**：假設是「目前相信為真、但未證實」的事；限制是「已知為真的邊界條件」。兩者不可混用同一個標籤。
- **完整性優先於速度**：寧可回報缺口也不要為了讓文件看起來完整而捏造內容。
- **凍結原則**：一旦 srs.md 輸出，即視為 frozen，後續任何調整都必須是「新一輪的 write-srs 執行」，而不是就地修改。

---

## Quality Checklist

- [ ] 每個 FR-ID 是否都可獨立追溯回 Requirement Draft 的候選項目？
- [ ] 是否所有 Open Questions / Gaps 都已被妥善歸類或明確保留，而非悄悄消失？
- [ ] Non-Functional Requirements 四個面向是否都已填寫（可為「無」但不可空白未提及）？
- [ ] 若為需求變更，是否所有既有 FR-ID 都被正確沿用？

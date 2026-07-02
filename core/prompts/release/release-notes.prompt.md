# Release Notes — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/write-release-notes 讀取。 -->

## Thinking Strategy

1. 先確認 final-review.md 的 Decision，不是 APPROVED 或 CONDITIONAL 就停止，不往下寫。
2. 針對 traceability-matrix.md 中本次涵蓋的每個 FR-ID，問「一個完全不懂技術的使用者，會怎麼描述這個變化」，用這個角度改寫。
3. 對每個變更問「這會不會讓使用者原本的操作方式壞掉」，是的話歸類為 Breaking Change，並思考使用者該怎麼因應。
4. 全部寫完後，通篇重讀一次，檢查是否不小心用了內部術語（module_id、operationId 等）。

---

## Reasoning Rules

- **讀者是使用者，不是工程師**：所有描述都要以終端使用者能理解的語言撰寫，技術 id 只能放在括號中做內部追溯。
- **不重複判斷過程**：release notes 不解釋「為什麼決定發布」，那是 final-review.md 的內容。
- **Breaking Change 必須配 Migration Guide**：只要標記為 Breaking Change，就必須讓使用者知道該怎麼做，不能只說「有變動」。

---

## Quality Checklist

- [ ] 是否所有條目都用使用者看得懂的語言撰寫？
- [ ] 是否有任何內部技術詞彙（module_id、operationId）外露？
- [ ] 每個 Breaking Change 是否都有對應的 Migration Guide？

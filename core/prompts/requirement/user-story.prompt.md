# User Story — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-user-story 讀取。 -->

## Thinking Strategy

1. 針對每個 Functional Requirement 候選項目，先問「誰在做這件事」，找出具體角色，而不是籠統的「使用者」。
2. 再問「他想達成的目標是什麼」，用一句話描述，避免與「怎麼做」混在一起。
3. 最後問「為什麼他想要這個」，找出背後的動機或價值，而不是重複描述功能本身。
4. 針對每條 User Story，反推「怎麼證明這件事完成了」，寫成 Given/When/Then。
5. 若一個候選項目其實包含多個不同情境，拆成多條 User Story，各自獨立可驗證。

---

## Reasoning Rules

- **角色具體化原則**：若角色只能寫成「使用者」而找不到更精確的說法，回頭檢查 pcp/terminology.md 是否已定義更精確的角色名稱。
- **目標與手段分離**：「我想要」的部分應描述目標而非實作方式（例如「我想要快速找到訂單」而非「我想要一個搜尋框」）。
- **可驗證原則**：Acceptance Criteria 若無法具體想像測試步驟，代表 User Story 本身還太抽象，需要回頭精煉。
- **不得無中生有**：User Story 的角色與目標必須能在 Requirement Draft 的候選項目中找到依據，不可自行新增未被提及的角色。

---

## Quality Checklist

- [ ] 角色是否具體（而非籠統的「使用者」）？
- [ ] 目標與手段是否已分離，沒有把 UI 細節寫進「我想要」？
- [ ] Acceptance Criteria 是否可以直接轉換成測試步驟？
- [ ] 用詞是否與 pcp/terminology.md 一致？

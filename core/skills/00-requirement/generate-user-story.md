# Generate User Story

## Capability

將 Requirement Draft 中的 Functional Requirement 候選項目改寫為標準格式的 User Story，並補上 Given/When/Then 格式的 Acceptance Criteria。不產生 FR-ID（那是 `write-srs` 統一編號時的職責），不重新分析需求缺口（那是 `extract-requirement` 的職責）。

思考邏輯依循 `core/prompts/requirement/user-story.prompt.md`。

---

## Input

Required

- Requirement Draft 的 Functional Requirement Candidates（來自 `extract-requirement`）

Optional

- pcp/terminology.md（確保用詞與專案既有詞彙一致）

---

## Output

依 `core/templates/00-requirement/requirement-draft.template.md` 補寫同一份 Requirement Draft 的：

- User Stories
- Acceptance Criteria

---

## Validation

依 `core/schemas/00-requirement/requirement-draft.schema.md` 驗證，失敗時停止並回報：

- Functional Requirement Candidates 為空，或仍存在未解決的 Open Questions / Gaps（應退回 `extract-requirement`）
- 任一 User Story 無法對應回某個 Functional Requirement Candidate
- 任一 User Story 或 Acceptance Criteria 不符合三段式 / Given-When-Then 格式

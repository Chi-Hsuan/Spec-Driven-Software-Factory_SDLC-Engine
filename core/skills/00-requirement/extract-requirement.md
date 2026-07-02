# Extract Requirement

## Capability

從非結構化的原始輸入中，萃取出結構化的需求候選項目（Functional / Non-Functional 草案）與待釐清的缺口。這是 Requirement Agent workflow 的第一個 Skill，不產生最終的 srs.md，只產生供 `generate-user-story` 與 `write-srs` 使用的中間草稿。

思考邏輯依循 `core/prompts/requirement/extract-requirement.prompt.md`；本 Skill 只負責呼叫該 Prompt 並將思考結果落地，不自行定義推理邏輯。

---

## Input

Required

- User input（原始使用者想法／需求描述）
- Business context

Optional

- Existing SRS（若為需求變更，需先讀取既有 srs.md）
- Product Vision
- Feature Request
- Meeting Notes
- pcp/*（domain、product-goals、constraints、terminology）

---

## Output

依 `core/templates/00-requirement/requirement-draft.template.md` 填寫 Requirement Draft，包含：

- Functional Requirement 候選清單（暫定描述，尚未指定 FR-ID）
- Non-Functional Requirement 候選清單
- Open Questions / Gaps

---

## Validation

依 `core/schemas/00-requirement/requirement-draft.schema.md` 驗證，失敗時停止並回報，不得繼續交付：

- User input 與 Business context 皆缺失
- 存在未標記為 Gap 卻明顯矛盾或憑空假設的內容
- 完全無法組成任何一條可驗證的 Functional Requirement

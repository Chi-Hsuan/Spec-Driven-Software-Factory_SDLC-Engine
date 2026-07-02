# SRS Schema

## Machine Validation

- `Functional Requirements` 至少 1 筆，每筆 `FR-ID` 格式為 `FR-{3位數}` 且全域唯一
- 每個 `FR-ID` 必須同時具備：描述、使用者價值、至少 1 條對應的 User Story、至少 1 組 Given/When/Then 格式的 Acceptance Criteria
- `Non-Functional Requirements` 四個分類（Performance / Security / Scalability / Reliability）必須全部存在
- `Scope` 必須同時包含 In Scope 與 Out of Scope 兩個子章節
- `User Stories` 每筆必須符合「作為 ___，我想要 ___，以便 ___」三段式格式
- `Assumptions & Constraints` 中的每一項必須能追溯回 Requirement Draft 的 Open Questions / Gaps（若該 Gap 已被歸類），不得出現未曾在草稿階段出現過的新假設
- 不得包含 `core/templates/00-requirement/srs.template.md` 定義以外的章節標題

INVALID 條件（任一成立即拒絕交付）：

- ❌ 存在 `FR-ID` 重複或格式不符
- ❌ 任一 `FR-ID` 缺少 User Story 或 Acceptance Criteria
- ❌ 某個 Non-Functional Requirements 分類缺失
- ❌ `Scope` 缺少 In Scope 或 Out of Scope
- ❌ 存在無法追溯來源的假設（可能是憑空捏造）

---

## Downstream Dependencies

本 artifact 被以下 Agent 讀取：UX/UI Agent、Architecture Agent、API Agent、Data Agent、Security Agent、Test Agent。

## Mutation Rules

- 僅 Requirement Agent（透過 `write-srs`）可寫入本檔案
- 其他 Agent 僅可讀取，不可修改（`core/rules/ENGINE_RULES.md` Rule 3 Frozen Specifications）

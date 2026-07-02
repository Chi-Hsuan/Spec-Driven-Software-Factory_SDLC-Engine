# Requirement Draft Schema

## Machine Validation

- `Functional Requirement Candidates` 至少 1 筆，每筆必須同時包含「描述」與「使用者價值」，兩者皆不可為空字串
- `Non-Functional Requirement Candidates` 四個分類（Performance / Security / Scalability / Reliability）必須全部存在，可為空清單但不可省略分類標題
- `Open Questions / Gaps` 允許為空清單
- 若任一 Functional Requirement Candidate 的「描述」內容與另一筆完全相同（重複項），視為 INVALID
- 不得包含 `core/templates/00-requirement/requirement-draft.template.md` 定義以外的章節標題
- `User Stories` 若非空，每筆必須符合「作為 ___，我想要 ___，以便 ___」三段式格式
- `Acceptance Criteria` 若非空，每筆必須同時包含 Given / When / Then 三個子句
- 每筆 `User Stories` 必須能對應到至少一筆 `Functional Requirement Candidates`（不可憑空產生）

INVALID 條件（任一成立即拒絕交付）：

- ❌ 無任何 Functional Requirement Candidate
- ❌ 某個 Non-Functional 分類標題缺失
- ❌ 存在描述完全相同的重複 Functional Requirement Candidate
- ❌ `User Stories` 不符合三段式格式
- ❌ `Acceptance Criteria` 缺少 Given / When / Then 任一子句
- ❌ `User Stories` 存在無法對應回任何 Functional Requirement Candidate 的項目

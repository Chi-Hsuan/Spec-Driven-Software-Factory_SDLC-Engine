# Write SRS

## Capability

將完整的 Requirement Draft（Functional/Non-Functional Requirement Candidates、User Stories、Acceptance Criteria、Open Questions/Gaps）組裝成正式的 `srs.md`，分配唯一 FR-ID，作為整個系統唯一的需求真實來源。不重新分析或萃取需求（那是 `extract-requirement` 的職責）。

思考邏輯依循 `core/prompts/requirement/srs.prompt.md`。

---

## Input

Required

- 完整的 Requirement Draft（來自 `extract-requirement` + `generate-user-story`）

Optional

- Existing SRS（若為需求變更，需沿用既有 FR-ID，不可重新編號既有項目）

---

## Output

依 `core/templates/00-requirement/srs.template.md` 撰寫 `specs/00-requirement/srs.md`。

---

## Validation

依 `core/schemas/00-requirement/srs.schema.md` 驗證，失敗時停止並回報：

- Requirement Draft 仍存在未解決的 Open Questions / Gaps 且無法歸類為假設或限制
- 任一 FR-ID 缺少對應的 User Story 或 Acceptance Criteria
- 若為需求變更，找不到 Existing SRS 對應的既有 FR-ID

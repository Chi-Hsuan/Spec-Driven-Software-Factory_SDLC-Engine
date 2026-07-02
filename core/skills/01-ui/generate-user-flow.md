# Generate User Flow

## Capability

將 srs.md 的功能需求轉換為使用者流程，描述使用者如何一步步完成任務，含成功路徑、失敗路徑與分支條件。純粹是「行為」描述，不涉及畫面佈局。

思考邏輯依循 `core/prompts/ui/user-flow.prompt.md`。

---

## Input

Required

- srs.md（Functional Requirements、User Stories）

Optional

- pcp/*

---

## Output

依 `core/templates/01-ui/user-flow.template.md` 撰寫 `specs/01-ui/user-flow.md`。

---

## Validation

依 `core/schemas/01-ui/user-flow.schema.md` 驗證，失敗時停止並回報：

- 找不到任何可對應的使用者角色
- 某個 FR-ID 的描述過於模糊，無法還原成具體操作步驟

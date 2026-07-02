# Security Checklist

## Capability

依 threat-model.md 逐項審查現有設計是否已有對應防護，產出審查結論（security-review.md）與可直接被 Backend Code Agent 實作的安全需求（security-requirements.md）。不重新識別新威脅（那是 `threat-model` 的職責）。

思考邏輯依循 `core/prompts/security/security-checklist.prompt.md`。

---

## Input

Required

- threat-model.md

Optional

- api-design.md

---

## Output

- 依 `core/templates/05-security/security-review.template.md` 撰寫 `specs/05-security/security-review.md`
- 依 `core/templates/05-security/security-requirements.template.md` 撰寫 `specs/05-security/security-requirements.md`

---

## Validation

依 `core/schemas/05-security/security-review.schema.md`、`security-requirements.schema.md` 驗證，失敗時停止並回報：

- threat-model.md 缺失或未完成
- 某個威脅情境無法判斷是否已有對應防護

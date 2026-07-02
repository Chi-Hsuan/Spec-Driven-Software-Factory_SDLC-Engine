# Threat Model

## Capability

針對 architecture.md、openapi.yaml、data-model.md 進行威脅建模，識別資產（Asset）、進入點（Entry Points）、威脅（Threats）與對應的緩解措施方向。只識別風險，不判斷是否接受、不提出詳細修正方案（那是 `security-checklist` 的職責）。

思考邏輯依循 `core/prompts/security/threat-model.prompt.md`。

---

## Input

Required

- architecture.md
- openapi.yaml
- data-model.md

Optional

- srs.md

---

## Output

依 `core/templates/05-security/threat-model.template.md` 撰寫 `specs/05-security/threat-model.md`。

---

## Validation

依 `core/schemas/05-security/threat-model.schema.md` 驗證，失敗時停止並回報：

- architecture.md / openapi.yaml / data-model.md 缺失，無法進行分析
- 無法判斷某個欄位是否為敏感資料

# Write Schema

## Capability

依 system-design.md 與 openapi.yaml 定義業務資料模型（data-model.md），轉譯為實際 DDL（schema.sql），並制定 schema 演進策略（migration-plan.md）。三者共用同一組 entity_id。

思考邏輯依循 `core/prompts/data/schema.prompt.md`。

---

## Input

Required

- system-design.md
- openapi.yaml

Optional

- srs.md

---

## Output

- 依 `core/templates/04-data/data-model.template.md` 撰寫 `specs/04-data/data-model.md`
- 依 `core/templates/04-data/schema.template.sql` 撰寫 `specs/04-data/schema.sql`
- 依 `core/templates/04-data/migration-plan.template.md` 撰寫 `specs/04-data/migration-plan.md`

---

## Validation

依 `core/schemas/04-data/data-model.schema.md`、`schema-sql.schema.md`、`migration-plan.schema.md` 驗證，失敗時停止並回報：

- system-design.md 或 openapi.yaml 沒有足夠資訊定義任何 entity
- entity 之間的關聯無法從既有輸入判斷

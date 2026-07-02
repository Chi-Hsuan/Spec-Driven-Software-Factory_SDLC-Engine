# Write Architecture

## Capability

將 srs.md 與 ui-spec.md 轉換為系統架構藍圖（architecture.md：System Context、Major Components、Service Boundaries、Data Flow Overview）與模組級設計（system-design.md：每個 Major Component 展開為 Module 區塊）。決策原因不寫在這裡（`write-adr` 的職責），實作步驟也不寫在這裡（`generate-task-breakdown` 的職責）。

思考邏輯依循 `core/prompts/architecture/architecture.prompt.md`。

---

## Input

Required

- srs.md
- ui-spec.md

Optional

- pcp/tech-stack.md

---

## Output

- 依 `core/templates/02-architecture/architecture.template.md` 撰寫 `specs/02-architecture/architecture.md`
- 依 `core/templates/02-architecture/system-design.template.md` 撰寫 `specs/02-architecture/system-design.md`

---

## Validation

依 `core/schemas/02-architecture/architecture.schema.md`、`system-design.schema.md` 驗證，失敗時停止並回報：

- srs.md 或 ui-spec.md 缺失或未凍結
- 無法從需求推導出合理的元件邊界
- architecture.md / system-design.md 中出現決策理由或實作步驟（應分別移至 adr / task-list）

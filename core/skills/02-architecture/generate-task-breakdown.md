# Generate Task Breakdown

## Capability

將 system-design.md 的模組級設計拆解為可執行的實作步驟，只講 implementation steps，不重複描述設計怎麼做（引用 `module_ref`）或決策原因（引用 `adr_ref`）。每個 task 必須小到可以被 Code Agent 直接執行。

思考邏輯依循 `core/prompts/architecture/task-breakdown.prompt.md`。

---

## Input

Required

- system-design.md

Optional

- adr/*.md

---

## Output

依 `core/templates/02-architecture/task-list.template.yaml` 撰寫 `specs/02-architecture/task-list.yaml`。

---

## Validation

依 `core/schemas/02-architecture/task-list.schema.md` 驗證，失敗時停止並回報：

- system-design.md 的某個 Module 內容不足以拆解出具體步驟
- task 之間出現循環依賴

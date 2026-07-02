# Generate Sequence Diagram

## Capability

繪製跨服務、端到端的請求流程圖，說明一個 operationId 觸發後如何在多個 module/服務之間流動。與 system-design.md 的「API Flow」不同：那是單一 module 視角，這裡是端到端視角。

思考邏輯依循 `core/prompts/api/sequence-diagram.prompt.md`。

---

## Input

Required

- openapi.yaml
- system-design.md

Optional

- error-codes.md

---

## Output

依 `core/templates/03-api/sequence-diagrams.template.md` 撰寫 `specs/03-api/sequence-diagrams.md`。

---

## Validation

依 `core/schemas/03-api/sequence-diagrams.schema.md` 驗證，失敗時停止並回報：

- 該 operationId 只涉及單一 module，不需要跨服務流程（此時不應建立 Flow）

# Write Wireframe

## Capability

將 user-flow.md 的使用者流程轉換為畫面層級的 layout 結構，定義每個 page 的區塊拆解。只描述結構性佈局，不涉及像素級視覺樣式。

思考邏輯依循 `core/prompts/ui/wireframe.prompt.md`。

---

## Input

Required

- user-flow.md

Optional

- srs.md

---

## Output

依 `core/templates/01-ui/wireframe.template.md` 撰寫 `specs/01-ui/wireframe.md`（Mermaid `block-beta` 圖）。

---

## Validation

依 `core/schemas/01-ui/wireframe.schema.md` 驗證，失敗時停止並回報：

- user-flow.md 中的步驟無法對應到具體畫面
- 無法決定畫面的分區結構

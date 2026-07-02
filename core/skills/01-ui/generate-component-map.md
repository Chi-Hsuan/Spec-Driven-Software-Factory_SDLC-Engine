# Generate Component Map

## Capability

將 wireframe.md 的區塊拆解為 component 樹狀結構，草擬每個 component 的型態、props、state、events。產出是「設計意圖」草案，並非最終規格（最終規格由 UI Spec Generator 依 Figma 重新定義）。

思考邏輯依循 `core/prompts/ui/component-map.prompt.md`。

---

## Input

Required

- wireframe.md

Optional

- user-flow.md

---

## Output

依 `core/templates/01-ui/component-map.template.md` 撰寫 `specs/01-ui/component-map.md`。

---

## Validation

依 `core/schemas/01-ui/component-map.schema.md` 驗證，失敗時停止並回報：

- wireframe.md 的 Section 過於模糊，無法拆解出具體 component
- 同一個 component 在不同 Page 定義互相矛盾

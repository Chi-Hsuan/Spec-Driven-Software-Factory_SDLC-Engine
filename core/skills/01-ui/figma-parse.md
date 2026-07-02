# Figma Parse

## Capability

解析 Figma（唯一真實來源），萃取畫面與元件的結構化資料，撰寫 `screen-spec.md`、`component-spec.md`、`ui-spec.md`。每個 screen/component 都保留 `figma_node_id` 以供追溯。UX/UI Agent 的產出物僅作交叉參考，衝突時以 Figma 為準。

思考邏輯依循 `core/prompts/ui/figma-parse.prompt.md`。

---

## Input

Required

- Figma 檔案（frames、components、variants）

Optional

- user-flow.md、wireframe.md、component-map.md（交叉參考用）

---

## Output

- 依 `core/templates/01-ui/screen-spec.template.md` 撰寫 `specs/01-ui/screen-spec.md`
- 依 `core/templates/01-ui/component-spec.template.md` 撰寫 `specs/01-ui/component-spec.md`
- 依 `core/templates/01-ui/ui-spec.template.md` 撰寫 `specs/01-ui/ui-spec.md`

---

## Validation

依 `core/schemas/01-ui/screen-spec.schema.md`、`component-spec.schema.md`、`ui-spec.schema.md` 驗證，失敗時停止並回報：

- 無法存取 Figma 檔案
- 存在無法辨識 page/frame 邊界的節點
- 任一 screen_id / component_id 缺少 figma_node_id

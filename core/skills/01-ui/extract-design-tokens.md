# Extract Design Tokens

## Capability

從 Figma 的 style 與 variable 定義中萃取設計 token（color、typography、spacing、radius、shadow、breakpoint、zIndex），作為所有樣式的唯一真實來源。與 `figma-parse` 並行，各自獨立：`figma-parse` 處理結構，本 skill 只處理樣式數值。

思考邏輯依循 `core/prompts/ui/extract-design-tokens.prompt.md`。

---

## Input

Required

- Figma 檔案的 style 與 variable 定義（color styles、text styles、effect styles、spacing/grid 設定）

---

## Output

依 `core/templates/01-ui/design-tokens.template.json` 撰寫 `specs/01-ui/design-tokens.json`。

---

## Validation

依 `core/schemas/01-ui/design-tokens.schema.md` 驗證，失敗時停止並回報：

- Figma 檔案完全沒有定義任何 style
- 無法判斷某個樣式數值該歸類到哪個 token 分類

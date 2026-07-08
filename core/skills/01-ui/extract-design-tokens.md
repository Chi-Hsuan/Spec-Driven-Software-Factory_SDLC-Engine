# Extract Design Tokens

## Capability

從 Figma 的 style 與 variable 定義中萃取設計 token（color、typography、spacing、radius、shadow、breakpoint、zIndex），作為所有樣式的唯一真實來源。優先採用該 Figma 檔案已連結的 library（Team Library）格式；若該檔案沒有 library，才回退參考 token template 自行歸類。與 `figma-parse` 並行，各自獨立：`figma-parse` 處理結構，本 skill 只處理樣式數值。

思考邏輯依循 `core/prompts/ui/extract-design-tokens.prompt.md`。

---

## Input

Required

- Figma 檔案的 style 與 variable 定義（color styles、text styles、effect styles、spacing/grid 設定）

判斷順序

1. 若該 Figma 檔案已連結 library（Team Library），優先讀取 library 中定義的 variable collection 作為 token 來源，其命名與分類通常已具備明確語意
2. 若該檔案未連結任何 library，才回退以檔案內部零散的 style 定義為來源，並參考 `design-tokens.template.json` 的分類自行歸納

---

## Output

依 `core/templates/01-ui/design-tokens.template.json` 撰寫 `specs/01-ui/design-tokens.json`（無論來源為 library 或零散 style，最終格式皆須符合此 template 的分類結構）。

---

## Validation

依 `core/schemas/01-ui/design-tokens.schema.md` 驗證，失敗時停止並回報：

- Figma 檔案完全沒有定義任何 style
- 無法判斷某個樣式數值該歸類到哪個 token 分類

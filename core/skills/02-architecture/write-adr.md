# Write ADR

## Capability

為 `write-architecture` 過程中識別出的技術決策節點，建立獨立的 Architecture Decision Record。一個決策一個檔案，只回答「決定了什麼、為什麼、有什麼後果」，不重複描述系統怎麼運作或怎麼實作。決策被推翻時新增新檔並標註 `superseded by`，不修改舊檔。

思考邏輯依循 `core/prompts/architecture/adr.prompt.md`。

---

## Input

Required

- 決策情境（Context）：面臨的問題或限制
- 候選方案（至少列出被否決的選項）

Optional

- 相關 module_id

---

## Output

依 `core/templates/02-architecture/adr.template.md` 撰寫 `specs/02-architecture/adr/{編號}-{短標題}.md`。

---

## Validation

依 `core/schemas/02-architecture/adr.schema.md` 驗證，失敗時停止並回報：

- 決策情境不足以支撐任何結論
- 找不到需要被推翻的舊 ADR 編號（若為推翻既有決策）

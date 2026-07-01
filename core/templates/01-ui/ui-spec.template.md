---
source_figma: <figma file url or key>
version: 0.1.0
generated_by: ui-spec-generator
generated_at: <ISO8601 timestamp>
design_tokens: ./design-tokens.json
---

<!--
本檔為 specs/01-ui/ 的頂層索引（master index）。
由 UI Spec Generator 讀取 Figma 後產出，是 frontend code agent 的入口文件。
規則：
- 所有 id 用 kebab-case，且必須在對應檔案（screen-spec.md / component-spec.md）中能查到
- 禁止在此檔案描述任何 UX 決策或設計理由（那是 UX/UI Agent 的職責），此檔只列「事實」
-->

# 1. Screens Index

| screen_id | name | route | spec_ref |
|---|---|---|---|
| `screen-home` |  | `/` | screen-spec.md#screen-home |

---

# 2. Component Library Index

| component_id | name | type | spec_ref |
|---|---|---|---|
| `btn-primary` |  | atom/button |  component-spec.md#btn-primary |

<!-- type 只能是：atom / molecule / organism / layout -->

---

# 3. Responsive Rules

- breakpoints 來源：`design-tokens.json#breakpoint`
- 每個 screen 若在不同 breakpoint 有不同 layout，須在 screen-spec.md 的 `layout.responsive` 區塊註明，此處不重複描述

---

# 4. Global Interaction Conventions

<!-- 跨頁共用、不屬於單一 screen 的規則，例如 loading / error / empty 的預設處理方式 -->

| state | 預設行為 |
|---|---|
| loading |  |
| error |  |
| empty |  |

---

# 5. Traceability

| 本檔案 | 對應來源 |
|---|---|
| screen-spec.md | wireframe.md, user-flow.md |
| component-spec.md | component-map.md |
| design-tokens.json | Figma styles / variables |

- Figma node 對應：每個 screen_id / component_id 必須在 screen-spec.md / component-spec.md 內附上 `figma_node_id`，供人工驗證與差異比對

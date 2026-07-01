<!--
本檔定義每個 component 的實際規格，一個 "## Component: {component_id}" 區塊 = 一個 component。
component_id 必須與 ui-spec.md 的 Component Library Index 一致，並可被 screen-spec.md 引用。
每個欄位都必須存在（可以是空值），不可省略整個小節 —— 這是為了讓 frontend code agent
逐一對照，不需要「猜」某個 component 是否有 state 或 event。
-->

# Component: `btn-primary`

## 1. Meta
- name:
- type: <!-- atom / molecule / organism / layout -->
- figma_node_id:
- description: <!-- 一句話說明用途，不描述視覺樣式（樣式在 design-tokens） -->

---

## 2. Props

| name | type | required | default | description |
|---|---|---|---|---|
| label | string | true |  |  |
| disabled | boolean | false | false |  |

---

## 3. State

<!-- component 內部自己管理的狀態，不是 screen-level 狀態 -->

| name | type | initial | description |
|---|---|---|---|
| loading | boolean | false |  |

---

## 4. Events

| name | payload | 觸發時機 | description |
|---|---|---|---|
| onClick | `{ id: string }` | 使用者點擊 |  |

---

## 5. Style Tokens

<!-- 只能引用 design-tokens.json 內已定義的 key，不可寫死顏色 / px 數值 -->

| 用途 | token path |
|---|---|
| background | `color.primary` |
| text | `color.text.inverse` |
| padding | `spacing.md` |
| radius | `radius.md` |

---

## 6. Variants

<!-- 同一 component 的外觀/行為變體，例如 primary / secondary / danger -->

| variant | 差異說明 |
|---|---|
| primary |  |

---

## 7. Children

<!-- 若此 component 是 organism / layout，組合了其他 component -->

| slot | component_id |
|---|---|
|  |  |

---

## 8. Accessibility

- role:
- aria-label:
- keyboard support:

---

<!-- 若有第二個 component，複製上方整個 "# Component: {component_id}" 區塊並換上新的 component_id -->

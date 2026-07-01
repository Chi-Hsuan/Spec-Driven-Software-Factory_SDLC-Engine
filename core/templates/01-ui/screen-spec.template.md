<!--
本檔定義每個 screen 的實際結構，一個 "## Screen: {screen_id}" 區塊 = 一個畫面。
screen_id 必須與 ui-spec.md 的 Screens Index 一致。
frontend code agent 只依此檔 + component-spec.md + design-tokens.json 產出程式碼，
不得參考 wireframe.md / user-flow.md（那是人類設計意圖，非最終規格）。
-->

# Screen: `screen-home`

## 1. Meta
- name:
- route: `/`
- figma_node_id:
- purpose: <!-- 一句話，這個畫面解決什麼問題 -->

---

## 2. Layout

<!-- region 名稱固定：header / sidebar / main / footer / modal，缺少的 region 直接省略 -->

| region | component_id | notes |
|---|---|---|
| header |  |  |
| sidebar |  |  |
| main |  |  |

### Responsive（若無差異可省略此段）

| breakpoint | 變化說明 |
|---|---|
| sm |  |
| md |  |
| lg |  |

---

## 3. Components Used

<!-- 此畫面實際渲染的所有 component，順序即畫面中的順序；component_id 必須能在 component-spec.md 查到 -->

| slot（在 layout 中的位置） | component_id | props override |
|---|---|---|
| main.1 |  |  |

---

## 4. Screen States

<!-- 只寫「畫面級」狀態，component 自身的 state 寫在 component-spec.md -->

| state | 觸發條件 | UI 表現 |
|---|---|---|
| loading |  |  |
| empty |  |  |
| error |  |  |
| success |  |  |

---

## 5. Data Dependencies

<!-- 對應 specs/03-api/openapi.yaml 的 operationId，不得在此處自行定義新 API -->

| operationId | 用途 | 觸發時機 |
|---|---|---|
|  |  | on mount |

---

## 6. Navigation

<!-- 從此畫面可以到達的其他 screen -->

| 觸發動作 | target screen_id | 條件 |
|---|---|---|
|  |  |  |

---

<!-- 若有第二個 screen，複製上方整個 "# Screen: {screen_id}" 區塊並換上新的 screen_id -->

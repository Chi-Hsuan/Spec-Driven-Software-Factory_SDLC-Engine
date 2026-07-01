<!--
data-model.md = 業務資料模型（business-level），回答「系統裡有哪些資料概念、彼此關係、業務規則」。
不要放：
- 實際 SQL 型別 / index / DDL → schema.sql 的職責
- schema 如何演進 / migration 步驟 → migration-plan.md 的職責
- 圖本身 → erd.mmd（這裡的表格是 erd.mmd 的資料來源，兩者 entity_id 必須一致）
-->

# 1. Entities Overview

| entity_id | name | 說明 |
|---|---|---|
| `entity-user` |  |  |
| `entity-resource` |  |  |

---

# 2. Entity Detail

## Entity: `entity-user`

### 欄位

| 欄位 | 業務意涵 | 型別（邏輯型別，非 SQL 型別） | 必填 | 規則 |
|---|---|---|---|---|
| id | 唯一識別 | identifier | true |  |
| email | 帳號 | string | true | 格式為 email，全域唯一 |

### 關聯

| 對象 entity_id | 關係基數 | 說明 |
|---|---|---|
| `entity-resource` | 1-to-many |  |

### 業務規則（不變式）

<!-- 例如：帳號被停用後不可再新增 resource -->
-

---

<!-- 若有第二個 entity，複製上方整個 "## Entity: {entity_id}" 區塊並換上新的 entity_id -->

---

# 3. Relationships Overview

<!-- 全域關聯總覽，對應 erd.mmd 的內容，此處為文字版摘要 -->

| entity_id A | 關係 | entity_id B |
|---|---|---|
| `entity-user` | 1-to-many | `entity-resource` |

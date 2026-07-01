<!--
migration-plan.md = Schema Evolution Strategy，回答「schema 怎麼安全地從 A 版變成 B 版」。
不要放：
- 目前的資料模型長怎樣 → data-model.md / erd.mmd
- 目前的 DB 結構本身 → schema.sql（這裡只放「變更」，不重複整份 schema）
-->

# 1. Migration 原則

- 命名規則：`{序號}_{動詞}_{對象}.sql`（例如 `0001_create_users.sql`）
- 策略：<!-- expand-contract（先新增後移除，兩階段部署）/ 直接變更，擇一並說明理由 -->
- 禁止事項：<!-- 例如禁止直接 DROP COLUMN，需先停止讀寫再移除 -->

---

# 2. Rollback 策略

- 每個 migration 是否需要對應的 down script：
- 不可逆變更（例如刪除資料）的處理方式：

---

# 3. Migration 紀錄

| migration_id | 日期 | 說明 | 影響的 entity_id | breaking change | rollback 方式 |
|---|---|---|---|---|---|
| `0001_create_users` |  | 建立 users table | `entity-user` | 否 | DROP TABLE users |

<!-- 每新增一個 migration，於此表新增一列；migration_id 必須與實際 migration 檔名一致 -->

---

# 4. 待執行 Migration（Backlog）

| 預計 migration_id | 說明 | 依賴 |
|---|---|---|
|  |  |  |

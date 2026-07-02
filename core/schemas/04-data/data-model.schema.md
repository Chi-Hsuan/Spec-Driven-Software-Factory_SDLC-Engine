# Data Model Schema

## Machine Validation

- Entities Overview 表格至少 1 筆，每筆有唯一 `entity_id`（kebab-case）
- 每個 `## Entity: {entity_id}` 區塊必須包含：欄位表（含業務意涵、邏輯型別、必填、規則）、關聯、業務規則
- 關聯表格中引用的 `entity_id` 必須在本檔案中能找到對應區塊
- Relationships Overview 的每一列都必須能在對應 Entity 區塊的「關聯」小節找到一致的敘述

INVALID 條件（任一成立即拒絕交付）：

- ❌ `entity_id` 重複或非 kebab-case
- ❌ 欄位表缺少業務意涵或必填標示
- ❌ 關聯引用了不存在的 entity_id
- ❌ 內容出現實際 SQL 型別（應只用邏輯型別）

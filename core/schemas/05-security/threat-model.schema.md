# Threat Model Schema

## Machine Validation

- 必須包含四個章節：Asset、Entry Points、Threats、Mitigations
- 每個章節至少 1 項
- 每個 Entry Point 必須能對應到 `openapi.yaml` 中存在的 path 或 operationId
- 每個 Threat 必須是具體攻擊手法（如 SQL Injection、XSS），不可為籠統敘述（如「資料外洩」）

INVALID 條件（任一成立即拒絕交付）：

- ❌ 任一章節為空
- ❌ Entry Point 無法對應到 openapi.yaml
- ❌ Threat 描述過於籠統，非具體攻擊手法

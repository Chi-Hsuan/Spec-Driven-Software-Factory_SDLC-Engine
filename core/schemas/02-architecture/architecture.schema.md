# Architecture Schema

## Machine Validation

- 必須包含五個章節：System Context、Major Components、Service Boundaries、Data Flow Overview、Traceability
- Major Components 表格每列必須有唯一 `component_id`（kebab-case）
- Service Boundaries 表格中，同一個 `component_id` 只能出現一次，且任兩個 component 的 owns 範圍不可有明顯重疊描述
- Data Flow Overview 只能呈現元件間互動，不可包含元件內部細節描述

INVALID 條件（任一成立即拒絕交付）：

- ❌ `component_id` 重複
- ❌ 缺少五個必要章節任一項
- ❌ 內容包含決策理由文字（應存在 adr/*.md）或實作步驟文字（應存在 task-list.yaml）

# SRS Schema（需求規格驗收標準）

---

# 1. 目的

本 Schema 用來定義：

👉 一份「合格的 SRS 文件」必須包含哪些內容

它不是模板，而是：

> ✔ 用來檢查 SRS 是否完整的規則

---

# 2. 必要結構（Required Sections）

SRS 必須包含以下內容：

---

## 2.1 系統概述（Overview）

必須包含：

- 產品描述
- 問題定義
- 目標

---

## 2.2 範圍（Scope）

必須包含：

- 功能範圍（In Scope）
- 非功能範圍（Out of Scope）

---

## 2.3 功能需求（Functional Requirements）

每一項功能需求必須包含：

- FR-ID（例如 FR-001）
- 功能描述
- 使用者價值

---

## 2.4 非功能需求（Non-Functional Requirements）

必須包含以下分類：

- 效能（Performance）
- 安全性（Security）
- 擴展性（Scalability）
- 穩定性（Reliability）

---

## 2.5 使用者故事（User Stories）

格式必須符合：

👉 作為 [使用者角色]，我想要 [功能]，以便 [目的]

---

## 2.6 驗收標準（Acceptance Criteria）

每個功能必須有驗收標準：

- Given（前提）
- When（條件）
- Then（結果）

---

## 2.7 假設與限制

必須包含：

- 技術假設
- 商業限制

---

# 3. 驗證規則（Validation Rules）

以下情況視為 **不合格 SRS**：

❌ 缺少功能需求  
❌ 沒有範圍（Scope）  
❌ 沒有使用者故事  
❌ 沒有驗收標準  

---

# 4. 下游依賴（Downstream Dependency）

此 SRS 會被以下 Agent 使用：

- UX/UI Agent
- Architecture Agent
- API Agent
- Data Agent

---

# 5. 修改規則（Mutation Rules）

- 只有 Requirement Agent 可以修改 SRS
- 其他 Agent 只能讀取
- 修改必須產生新版（不可直接覆蓋）
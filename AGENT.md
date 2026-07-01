# 🧠 Spec-Driven Software Factory（SDLC 引擎）

本系統定義了一套 **Spec-Driven Development（SDD）** 工作流程，透過多個專職 Agent 執行完整的 Software Development Life Cycle（SDLC）。

系統設計目標：
- project-agnostic（專案無關）
- spec-first（規格優先），而非 code-first
- 支援 Figma 的 UI 流程
- 從需求到發布全程可追溯

---

# 🧩 0. 核心設計原則

## 1. Spec is the Source of Truth
所有實作都必須遵循結構化的規格文件。

## 2. Agents are Stateless
Agent 不儲存專案記憶，僅處理輸入 → 輸出。

## 3. No Cross-Agent Decision Making
每個 Agent 都有嚴格的職責邊界。

## 4. UI is defined before implementation
Figma 是 UI 的真實來源層。

---

# 📦 1. Project Context Pack（PCP）

## 🎯 Purpose

PCP 定義所有 Agent 都依賴的專案脈絡。

## 📁 Structure
```
pcp/
├── domain.md
├── product-goals.md
├── constraints.md
├── tech-stack.md
├── terminology.md
├── integrations.md
```


---

# 🎯 2. Requirement Agent

## 🎯 Responsibility

將原始構想（raw idea）轉換為結構化的產品需求。

## 📦 Outputs
```
specs/00-requirement/
├── srs.md
```
## 📥 Inputs

- user idea
- business goals
- PCP

---

# 🎨 3. UX/UI System（雙層架構）

---

## 🎨 3.1 UX/UI Agent（Human-like Design）

### 🎯 Responsibility

在 Figma 之前，設計使用者體驗與 UI 結構。

### 📦 Outputs
```
specs/01-ui/
├── user-flow.md
├── wireframe.md
├── component-map.md
```
### 📥 Inputs

- srs.md
- pcp/

### 🚫 Not responsible for:

- Figma parsing
- design tokens
- 像素級 UI 細節

---

## 🔄 3.2 UI Spec Generator（System-level）

### 🎯 Responsibility

將 Figma 轉換為結構化的 UI 規格。

### 📦 Outputs
```
specs/01-ui/
├── ui-spec.md
├── screen-spec.md
├── component-spec.md
├── design-tokens.json
```

### 📥 Inputs

- Figma（source of truth）
- UX/UI Agent 產出物（僅供參考）

### 🚫 Not responsible for:

- UX design
- user flows
- 產品邏輯

---

# 🏗 4. Architecture Agent

## 🎯 Responsibility

依據規格設計系統架構。

## 📦 Outputs
```
specs/02-architecture/
├── architecture.md
├── system-design.md
├── tech-decisions.md
├── task-list.yaml
├── adr/
```

## 📥 Inputs

- srs.md
- ui-spec.md
- pcp/

---

# 🌐 5. API Agent

## 🎯 Responsibility

定義前後端之間的 API 合約。

## 📦 Outputs
```
specs/03-api/
├── openapi.yaml
├── api-spec.md
├── error-codes.md
├── sequence-diagrams.md
```

## 📥 Inputs

- architecture.md
- ui-spec.md

---

# 🗄 6. Data Agent

## 🎯 Responsibility

設計資料模型與持久層。

## 📦 Outputs
```
specs/04-data/
├── data-model.md
├── schema.sql
├── erd.mmd
├── migration-plan.md
```

## 📥 Inputs

- architecture.md
- api-spec.md

---

# 🔐 7. Security Agent

## 🎯 Responsibility

定義安全模型與風險分析。

## 📦 Outputs
```
specs/05-security/
├── threat-model.md
├── security-review.md
├── auth-design.md
```

## 📥 Inputs

- architecture.md
- api-spec.md

---

# ⚙️ 8. Backend Code Agent

## 🎯 Responsibility

依據規格實作後端。

## 📦 Outputs

- backend 原始碼
- implementation-notes.md

## 📥 Inputs

- architecture.md
- api-spec.yaml
- data-model.md
- security-review.md

---

# 🎯 9. Frontend Code Agent

## 🎯 Responsibility

嚴格依據 UI spec 與 design tokens 實作 UI。

## 📦 Outputs

- frontend 原始碼
- 元件實作筆記

## 📥 Inputs

- ui-spec.md
- component-spec.md
- design-tokens.json
- openapi.yaml

---

## 🚫 Not responsible for:

- UI design decisions
- UX flow changes
- 視覺創意發想

---

# 🧪 10. Test Agent

## 🎯 Responsibility

產出測試策略與測試實作。

## 📦 Outputs
```
specs/06-test/
├── test-plan.md
├── e2e/
├── test-cases.md
├── test-report.md
```

## 📥 Inputs

- 所有 specs
- backend/frontend 程式碼

---

# 🚀 11. Review & Release Agent

## 🎯 Responsibility

確保系統一致性與 release 就緒狀態。

## 📦 Outputs
```
specs/07-release/
├── release-notes.md
├── traceability-matrix.md
├── final-review.md
```

## 📥 Inputs

- 所有 specs
- codebase

---

# 🔁 12. Full SDLC Workflow
```
Requirement Agent
↓
UX/UI Agent
↓
Figma（design truth layer）
↓
UI Spec Generator
↓
Architecture Agent
↓
API / Data / Security Agents
↓
Backend / Frontend Agents
↓
Test Agent
↓
Review & Release Agent
```

---

# ⚖️ 13. Strict Boundary Rules

## ❌ No overlap principle

- UX/UI Agent ≠ UI Spec Generator
- Architecture ≠ API
- Frontend ≠ Design
- Code ≠ Spec

---

## ✔ Single Responsibility Rule

每個 Agent：
> transforms input → output spec/code only

---

# 🧠 14. Source of Truth Hierarchy

| Layer | Source |
|------|--------|
| Product Logic | SRS |
| UX Flow | UX/UI Agent |
| UI Implementation Spec | Figma + UI Spec Generator |
| Architecture | Architecture Agent |
| API | API Spec |
| Code | Implementation Agents |

---

# 🚀 15. Framework Goal

本系統可實現：

- Spec-driven development（SDD）
- 跨專案可重用性
- Figma-based UI pipeline
- 具確定性的工程輸出
- AI-assisted SDLC automation

---

# 🧩 16. Extensibility

本系統可擴充以下功能：

- MCP integrations（Figma、GitHub、DB）
- CI/CD automation
- 自動程式碼生成流程
- Agent orchestration engine

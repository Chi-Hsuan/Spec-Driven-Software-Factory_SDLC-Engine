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

將使用者需求轉換為結構化需求規格（SRS），作為整個系統的唯一需求來源

## 📦 Outputs
```
specs/00-requirement/
├── srs.md
```
## 📥 Inputs

- User input
- Business context


# 🎨 3 UX/UI Agent（Human-like Design）

## 🎯 Responsibility

將需求轉換為使用者流程與介面結構（user behavior + UI structure）

## 📦 Outputs
```
specs/01-ui/
├── user-flow.md
├── wireframe.md
├── component-map.md
```
## 📥 Inputs

- srs.md
- pcp/

## 🚫 Not responsible for:

- Figma parsing
- design tokens
- 像素級 UI 細節

---

# 🔄 4. UI Spec Generator Agent（System-level）

## 🎯 Responsibility

將 UX/UI 與 Figma 設計轉換為可實作的 UI 技術規格

## 📦 Outputs
```
specs/01-ui/
├── ui-spec.md
├── screen-spec.md
├── component-spec.md
├── design-tokens.json
```

## 📥 Inputs

- Figma（source of truth）
- UX/UI Agent 產出物（僅供參考）

## 🚫 Not responsible for:

- UX design
- user flows
- 產品邏輯

---

# 🏗 5. Architecture Agent

## 🎯 Responsibility

將需求轉換為系統架構設計與技術藍圖

## 📦 Outputs
```
specs/02-architecture/
├── architecture.md
├── system-design.md
├── task-list.yaml
├── adr/
```

## 📥 Inputs

- srs.md
- ui-spec.md
- pcp/

---

# 🌐 6. API Agent

## 🎯 Responsibility

定義前後端之間的 API 合約。

## 📦 Outputs
```
specs/03-api/
├── openapi.yaml
├── api-design.md
├── error-codes.md
├── sequence-diagrams.md
```

## 📥 Inputs

- architecture.md
- ui-spec.md

---

# 🗄 7. Data Agent

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

# 🔐 8. Security Agent

## 🎯 Responsibility

依據既有 Spec，找出安全風險並提出修正建議。

## 📦 Outputs
```
specs/05-security/
├── threat-model.md
├── security-review.md
├── security-requirements.md
```

## 📥 Inputs

- srs.md
- architecture.md
- openapi.yaml
- data-model.md

---

# ⚙️ 9. Backend Code Agent

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

# 🎯 10. Frontend Code Agent

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

# 🧪 11. Test Agent

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

# 🚀 12. Review & Release Agent

## 🎯 Responsibility

整合所有規格、測試與驗證結果，進行最終審查與發佈決策。

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

# 🔁 13. Full SDLC Workflow
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

# ⚖️ 14. Strict Boundary Rules

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

# 🧠 14. SDLC Engine - Agent Matrix

| Agent | Responsibility | Input| Output                                                                    |
| ---------------------- | ---------------------------------------------------- | ----------------------------------------------- | ------------------------------------------------------------------------- |
| Requirement Agent      | 將使用者需求轉換為結構化需求規格（SRS），作為整個系統的唯一需求來源 | User input、Business context                     | `srs.md`                                     |
| UX/UI Agent            | 將需求轉換為使用者流程與介面結構（user behavior + UI structure）       | srs.md                        | `user-flow.md`, `wireframe.md`, `component-map.md`                        |
| UI Spec Generator      | 將 UX/UI 與 Figma 設計轉換為可實作的 UI 技術規格                    | figma design, wireframe.md, component-map.md    | `ui-spec.md`, `component-spec.md`, `design-tokens.json`                   |
| Architecture Agent     | 將需求轉換為系統架構設計與技術藍圖                                    | srs.md, nfr.md                                  | `architecture.md`, `system-design.md`, `adr/*.md`, `task-list.yaml`       |
| API Agent              | 定義前後端溝通契約與 API 規格                                    | system-design.md, architecture.md               | `openapi.yaml`, `api-design.md`, `error-codes.md`, `sequence-diagrams.md` |
| Data Agent             | 將資料需求轉換為資料模型與資料庫設計                                   | system-design.md, api-spec, srs.md              | `data-model.md`, `schema.sql`, `erd.mmd`, `migration-plan.md`             |
| Security Agent         | 針對所有設計進行安全分析與風險審查，提出安全需求與修正建議                        | srs.md, architecture.md, api spec, data model   | `threat-model.md`, `security-review.md`, `security-requirements.md`       |
| Test Agent             | 根據規格建立驗證策略與測試案例，確保系統符合需求與品質標準                        | srs.md, openapi.yaml, ui spec, architecture.md  | `test-plan.md`, `test-cases.md`, `e2e/`, `test-report.md`                 |
| Review & Release Agent | 整合所有規格、測試與驗證結果，進行最終審查與發佈決策                           | all specs + test-report.md + security-review.md | `release-notes.md`, `traceability-matrix.md`, `final-review.md`           |

---

# 🧠 15. Source of Truth Hierarchy

| Layer | Source |
|------|--------|
| Requirement | SRS（Requirement Agent） |
| UX Flow | UX/UI Agent |
| UI Implementation Spec | Figma + UI Spec Generator |
| Architecture / System Design | Architecture Agent |
| API Contract | API Agent（openapi.yaml） |
| Data Model | Data Agent（data-model.md / schema.sql） |
| Security Requirements | Security Agent |
| Code | Backend / Frontend Code Agent |
| Test Strategy & Result | Test Agent |
| Release Decision | Review & Release Agent |

---

# 🚀 16. Framework Goal

本系統可實現：

- Spec-driven development（SDD）
- 跨專案可重用性
- Figma-based UI pipeline
- 具確定性的工程輸出
- AI-assisted SDLC automation

---

# 🧩 17. Extensibility

本系統可擴充以下功能：

- MCP integrations（Figma、GitHub、DB）
- CI/CD automation
- 自動程式碼生成流程
- Agent orchestration engine

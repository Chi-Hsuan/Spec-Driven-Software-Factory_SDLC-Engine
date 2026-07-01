# Artifact Rules

Artifact 是 Agent 之間交換的產出物。

---

## Naming

Artifact 應使用一致的命名。

範例：

- srs.md
- architecture.md
- ui-spec.md
- openapi.yaml

---

## Template Conformance

每個 artifact 產生時，必須遵循 `core/templates/` 下對應的 template 結構，不得自行發明新格式或省略必要區塊。

| Artifact | Template |
|---|---|
| `srs.md` | `core/templates/00-requirement/srs.template.md` |
| `user-flow.md` | `core/templates/01-ui/user-flow.template.md` |
| `wireframe.md` | `core/templates/01-ui/wireframe.template.md` |
| `component-map.md` | `core/templates/01-ui/component-map.template.md` |
| `ui-spec.md` | `core/templates/01-ui/ui-spec.template.md` |
| `screen-spec.md` | `core/templates/01-ui/screen-spec.template.md` |
| `component-spec.md` | `core/templates/01-ui/component-spec.template.md` |
| `design-tokens.json` | `core/templates/01-ui/design-tokens.template.json` |
| `architecture.md` | `core/templates/02-architecture/architecture.template.md` |
| `system-design.md` | `core/templates/02-architecture/system-design.template.md` |
| `task-list.yaml` | `core/templates/02-architecture/task-list.template.yaml` |
| `adr/*.md` | `core/templates/02-architecture/adr.template.md` |
| `openapi.yaml` | `core/templates/03-api/openapi.template.yaml` |
| `api-design.md` | `core/templates/03-api/api-design.template.md` |
| `error-codes.md` | `core/templates/03-api/error-codes.template.md` |
| `sequence-diagrams.md` | `core/templates/03-api/sequence-diagrams.template.md` |
| `data-model.md` | `core/templates/04-data/data-model.template.md` |
| `schema.sql` | `core/templates/04-data/schema.template.sql` |
| `erd.mmd` | `core/templates/04-data/erd.template.mmd` |
| `migration-plan.md` | `core/templates/04-data/migration-plan.template.md` |
| `threat-model.md` | `core/templates/05-security/threat-model.template.md` |
| `security-review.md` | `core/templates/05-security/security-review.template.md` |
| `security-requirements.md` | `core/templates/05-security/security-requirements.template.md` |
| `test-plan.md` | `core/templates/06-test/test-plan.template.md` |
| `test-cases.md` | `core/templates/06-test/test-cases.template.md` |
| `e2e/*.spec.ts` | `core/templates/06-test/e2e/example.spec.template.ts` |
| `test-report.md` | `core/templates/06-test/test-report.template.md` |
| `release-notes.md` | `core/templates/07-release/release-notes.template.md` |
| `traceability-matrix.md` | `core/templates/07-release/traceability-matrix.template.md` |
| `final-review.md` | `core/templates/07-release/final-review.template.md` |
| backend/frontend 原始碼、`implementation-notes.md` | 無對應 template（實作程式碼直接遵循 spec，非填空式文件） |
| `pcp/*` | 尚無 template（人類撰寫的專案脈絡，不屬於 Agent 產出物） |

---

## Ownership

每個 artifact 只有一個 owner，並只能由該 owner 進行編輯．

| Artifact | Owner |
|---|---|
| `srs.md` | Requirement Agent |
| `user-flow.md` | UX/UI Agent |
| `wireframe.md` | UX/UI Agent |
| `component-map.md` | UX/UI Agent |
| `ui-spec.md` | UI Spec Generator |
| `screen-spec.md` | UI Spec Generator |
| `component-spec.md` | UI Spec Generator |
| `design-tokens.json` | UI Spec Generator |
| `architecture.md` | Architecture Agent |
| `system-design.md` | Architecture Agent |
| `task-list.yaml` | Architecture Agent |
| `adr/*.md` | Architecture Agent |
| `openapi.yaml` | API Agent |
| `api-design.md` | API Agent |
| `error-codes.md` | API Agent |
| `sequence-diagrams.md` | API Agent |
| `data-model.md` | Data Agent |
| `schema.sql` | Data Agent |
| `erd.mmd` | Data Agent |
| `migration-plan.md` | Data Agent |
| `threat-model.md` | Security Agent |
| `security-review.md` | Security Agent |
| `security-requirements.md` | Security Agent |
| backend 原始碼 / `implementation-notes.md` | Backend Code Agent |
| frontend 原始碼 / 元件實作筆記 | Frontend Code Agent |
| `test-plan.md` | Test Agent |
| `test-cases.md` | Test Agent |
| `e2e/` | Test Agent |
| `test-report.md` | Test Agent |
| `release-notes.md` | Review & Release Agent |
| `traceability-matrix.md` | Review & Release Agent |
| `final-review.md` | Review & Release Agent |
| `pcp/*`（domain / product-goals / constraints / tech-stack / terminology） | Human / Product Owner（非 Agent 產出，供所有 Agent 讀取） |

---

## Versioning

Artifact 應漸進式演進（evolve incrementally）。

不得在未記錄變更的情況下覆蓋先前的決策。

---

## Dependencies

Artifact 只能依賴已核准的上游 artifact。

範例：

Architecture

依賴於：

- SRS
- UI Specification

但不依賴實作程式碼。

---

## Traceability

只要可行，每個 artifact 都應該引用產生它的上游 artifact。

範例：

所有 Test Case 必須可以追溯到至少一個 Requirement 或 API Contract；不得產生無法說明驗證目的的測試案例。

---

## Immutability

一旦 artifact 被核准供下游使用，在正式修訂之前應視為唯讀（read-only）。

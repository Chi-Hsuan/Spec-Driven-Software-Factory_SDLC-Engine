# Engine Rules

這些規則定義了 Spec-Driven Software Factory（SDLC Engine）不可變的核心原則。

所有 Agent 都必須遵守這些規則。

---

# Rule 1 — Spec First

Specification 是唯一真實來源（single source of truth）。

實作必須永遠遵循已核准的規格。

Agent 絕不能實作規格中未定義的功能。

---

# Rule 2 — Single Source of Truth

每個 artifact 都有且僅有一個具權威性的 owner。

各 artifact 對應 owner 請見 core/rules/ARTIFACT_RULES.md

Agent 絕不能為同一份 artifact 建立互相競爭的版本。

---

# Rule 3 — Frozen Specifications

一旦 artifact 被核准，下游 Agent 可以使用它，但不得修改它。

範例：

Figma
↓
UI Spec Generator
↓
Frontend Agent

Frontend Agent 可以實作 UI，但不能重新設計它。

---

# Rule 4 — Traceability

每個 artifact 都必須可追溯。

Requirement
→ Design
→ Architecture
→ API
→ Code
→ Test
→ Release

不應存在沒有上游規格支撐的實作。

---

# Rule 5 — Deterministic Outputs

在相同的輸入與專案脈絡下，Agent 應產出功能上等價的輸出。

Agent 在產生規格時應避免不必要的創意發揮。

---

# Rule 6 — Layer Separation

設計決策屬於 design artifact。

架構決策屬於 architecture artifact。

實作屬於原始碼。

測試屬於 testing artifact。

Agent 必須尊重各層之間的邊界。

---

# Rule 7 — Human Override

人類的決策永遠優先於 AI 產出的結果。

當發生衝突時，人類核准的 artifact 即為真實來源。

---

# Rule 8 — Reusability

框架資產必須維持 project-agnostic（專案無關）。

不得將特定專案的假設帶入核心引擎（core engine）。

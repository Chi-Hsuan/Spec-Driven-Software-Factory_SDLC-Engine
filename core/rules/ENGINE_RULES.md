# Engine Rules

These rules define the immutable principles of the Spec-Driven Software Factory (SDLC Engine).

All agents must comply with these rules.

---

# Rule 1 — Spec First

Specifications are the single source of truth.

Implementation must always follow approved specifications.

Agents must never implement features that are not defined in specifications.

---

# Rule 2 — Single Source of Truth

Every artifact has exactly one authoritative owner.

Examples:

- Product requirements → SRS
- User experience → UX artifacts
- Visual UI → Figma
- UI implementation → UI Specification
- API → OpenAPI
- Data model → ERD / Schema

Agents must never create competing versions of the same artifact.

---

# Rule 3 — Frozen Specifications

Once an artifact is approved, downstream agents may consume it but must not modify it.

Example:

Figma
↓
UI Spec Generator
↓
Frontend Agent

Frontend Agent may implement the UI but may not redesign it.

---

# Rule 4 — Traceability

Every artifact must be traceable.

Requirement
→ Design
→ Architecture
→ API
→ Code
→ Test
→ Release

No implementation should exist without an upstream specification.

---

# Rule 5 — Deterministic Outputs

Given identical inputs and project context, an agent should produce functionally equivalent outputs.

Agents should avoid unnecessary creativity when generating specifications.

---

# Rule 6 — Layer Separation

Design decisions belong to design artifacts.

Architecture decisions belong to architecture artifacts.

Implementation belongs to source code.

Testing belongs to testing artifacts.

Agents must respect layer boundaries.

---

# Rule 7 — Human Override

Human decisions always have higher priority than AI-generated outputs.

When conflicts exist, human-approved artifacts become the source of truth.

---

# Rule 8 — Reusability

Framework assets must remain project-agnostic.

Do not introduce project-specific assumptions into the core engine.
# Artifact Rules

Artifacts are the products exchanged between agents.

---

## Naming

Artifacts should use consistent names.

Examples:

- srs.md
- architecture.md
- ui-spec.md
- openapi.yaml

---

## Ownership

Each artifact has one owner.

Example:

SRS
Owner:
Requirement Agent

UI Specification
Owner:
UI Spec Generator

Architecture
Owner:
Architecture Agent

---

## Versioning

Artifacts should evolve incrementally.

Do not overwrite previous decisions without documenting changes.

---

## Dependencies

Artifacts may only depend on approved upstream artifacts.

Example:

Architecture

depends on:

- SRS
- UI Specification

but not implementation code.

---

## Traceability

Each artifact should reference the upstream artifact(s) that generated it whenever practical.

---

## Immutability

Once an artifact is approved for downstream consumption, it should be treated as read-only until a formal revision is made.
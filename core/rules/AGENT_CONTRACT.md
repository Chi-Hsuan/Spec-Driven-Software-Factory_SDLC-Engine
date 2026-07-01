# Agent Contract

Every agent follows the same execution contract.

---

## Responsibilities

Each agent has one clearly defined responsibility.

Agents should not perform tasks outside their domain.

---

## Inputs

Agents only consume approved upstream artifacts.

Agents should never infer missing requirements without explicitly documenting assumptions.

---

## Outputs

Every output must:

- be deterministic
- follow the corresponding schema
- be machine-readable where possible
- be reusable by downstream agents

---

## Boundaries

Agents cannot modify upstream artifacts.

Agents cannot override other agents' responsibilities.

Agents cannot skip pipeline stages.

---

## Failure Handling

If required inputs are missing:

- stop execution
- report missing artifacts
- do not fabricate missing specifications
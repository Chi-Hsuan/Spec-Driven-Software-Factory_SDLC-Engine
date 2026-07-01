# SRS Schema (Software Requirement Specification Contract)

This defines the required structure of an SRS document.

---

# 1. Purpose

The SRS defines:
- what the system should do
- what the scope is
- what requirements exist

It is the source of truth for all downstream agents.

---

# 2. Required Sections

An SRS MUST include the following sections:

## 2.1 Overview
- Product description
- Problem statement
- Goals

---

## 2.2 Scope
- In scope features
- Out of scope features

---

## 2.3 Functional Requirements
Must include:
- FR-ID (e.g. FR-001)
- Description
- User value

---

## 2.4 Non-Functional Requirements
Must include:
- Performance
- Security
- Scalability
- Reliability

---

## 2.5 User Stories
Format:
- As a [user], I want [goal], so that [reason]

---

## 2.6 Acceptance Criteria
Each requirement must have:
- Given / When / Then format OR checklist format

---

## 2.7 Assumptions & Constraints
- Technical assumptions
- Business constraints

---

# 3. Validation Rules

An SRS is INVALID if:

- missing Functional Requirements
- missing Scope section
- no user stories
- no acceptance criteria

---

# 4. Downstream Dependencies

This artifact is consumed by:

- UX/UI Agent
- Architecture Agent
- API Agent
- Data Agent

---

# 5. Mutation Rules

- Only Requirement Agent can modify SRS
- Other agents can only READ it
# routecard-skill PRD

Status: in-progress
Owner: Roger Chappel
Lane: agent-skill OSS factory
Created: 2026-06-28

## Problem

Agents need a compact way to explain which connector or tool route they would use before taking action. Existing connector planning tools focus on broader policy rehearsal, while operators often need a small "route card" artifact for one requested action.

## Goal

Build a reusable local-first agent skill that converts an intended action, connector catalog, and approval policy into a dry-run route card: selected route, rejected alternatives, permissions, evidence needed, and next approval gate.

## Non-goals

- Calling connectors or APIs.
- Managing live credentials.
- Replacing full policy engines.

## MVP

- Accept an action request and connector catalog as JSON.
- Rank connector routes by capability, risk, approval need, and missing inputs.
- Produce Markdown and JSON route cards.
- Provide deterministic CLI and library API.
- Include fixtures, tests, docs, skill instructions, smoke command, and release-candidate notes.

## Safety

The skill must never execute external actions. It should default to `blocked` when required approvals, identities, or write scopes are unclear.

## Acceptance Criteria

- `npm test`, `npm run check`, `npm run build`, and `npm run smoke` pass.
- Fixture output includes selected route, alternatives, approval gates, and missing evidence.
- README explains quickstart, examples, limitations, and safety notes.
- `SKILL.md` documents when to use the skill, inputs, side-effect boundaries, approvals, examples, and validation workflow.
- A release-candidate PR is opened against the public `rogerchappel/routecard-skill` repo.

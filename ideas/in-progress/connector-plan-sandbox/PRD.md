# PRD: connector-plan-sandbox

Status: in-progress
Decision: build now
Updated: 2026-07-16
Source: oss-factory-agent-skills queue replenishment after ready queue shortage.

## Pitch

`connector-plan-sandbox` rehearses connector action plans against local policy
fixtures and emits a dry-run receipt before any external write occurs.

## Why It Matters

Agents need to explain what a connector action would touch, which approval mode
it requires, and what data may leave the local environment. A small sandbox lets
builders test those plans with fixtures instead of live accounts.

## V1 Scope

- Local-first CLI and library API.
- Accept a JSON action plan and a JSON connector policy fixture.
- Classify reads, writes, sensitive fields, approval requirements, and blockers.
- Emit Markdown and JSON dry-run receipts.
- Include fixture-backed tests, `SKILL.md`, smoke command, safety notes, and
  release-candidate notes.

## Out of Scope

- Executing connector actions.
- Managing OAuth, tokens, or live app state.
- Replacing product-specific consent flows.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and
`bash scripts/validate.sh`.


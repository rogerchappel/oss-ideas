# PRD: connectorplancheck

Status: built
Decision: ship
Repo: https://github.com/rogerchappel/connectorplancheck
Release candidate PR: https://github.com/rogerchappel/connectorplancheck/pull/1
Updated: 2026-07-12

## Pitch

A dry-run review gate for agent connector action plans before any live external system is touched.

## Why It Matters

Agents regularly prepare Slack, CRM, GitHub, and project-management actions. `connectorplancheck` makes the plan prove dry-run status, approval state, destination boundaries, idempotency, data classification, and rollback notes before execution.

## V1 Scope

- Read local JSON connector action plans.
- Validate dry-run, approval, target/account, action, idempotency, data-boundary, rollback, and obvious-secret rules.
- Emit Markdown and JSON reports.
- Include safe/unsafe fixtures, tests, smoke command, and reusable skill instructions.

## Verification

- `npm test`: pass
- `npm run check`: pass
- `npm run build`: pass
- `npm run smoke`: pass

## Outcome

Built as public repo `rogerchappel/connectorplancheck`; branch `release-candidate/connectorplancheck`; classification `ship`.

# PRD: connector-retry-dryrun-skill

Status: ready
Decision: build now
Created: 2026-07-14
Source: OSS Factory agent-skill queue replenishment.

## Pitch

`connector-retry-dryrun-skill` helps agents rehearse retry plans for connector actions before any external write happens.

## Problem

Agents often need to retry failed connector operations, but retrying a Slack, CRM, GitHub, or project-management action can duplicate messages, mutate stale records, or hide the original failure. A local dry-run planner should make retries explicit, idempotent, and reviewable.

## V1 Scope

- Local TypeScript CLI and library.
- Parse JSON action logs and planned connector calls.
- Classify retry safety: safe, needs idempotency key, needs human approval, do not retry.
- Emit Markdown and JSON retry plans with evidence paths.
- Include fixture-backed tests for messaging, CRM, issue-tracker, and file-write examples.
- Include `SKILL.md` with side-effect and approval boundaries.

## Non-Goals

- Executing connector actions.
- Reading credentials or live connector state.
- Replacing provider-specific idempotency APIs.

## CLI Sketch

```bash
connector-retry-dryrun plan fixtures/slack-failure.json --out .tmp/retry-plan.md --json .tmp/retry-plan.json
connector-retry-dryrun check .tmp/retry-plan.json --require-approval risky
```

## Verification

- `npm run check`
- `npm test`
- `npm run smoke`
- `npm run package:smoke`

## Agent Prompt

Build `connector-retry-dryrun-skill` as a local-first retry planner for agent connector actions. Focus on deterministic fixtures, clear approval gates, idempotency guidance, and no live external writes.

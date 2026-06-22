# connector-dryrun-kit

Status: built
Decision: ship
Created: 2026-06-22
Updated: 2026-06-22
Repo: https://github.com/rogerchappel/connector-dryrun-kit
Release candidate PR: https://github.com/rogerchappel/connector-dryrun-kit/pull/1

Outcome: Built a public local-first connector dry-run receipt CLI and agent skill with fixtures, tests, validation script, release-candidate branch, and protected main.

## Scorecard

Total: 86/100
Band: build now
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 19/20 | Agents need to explain connector side effects before touching CRMs, PM tools, or chat systems. |
| Demand signal | 17/20 | Roger's connector routing and approval-ledger work repeatedly needs local dry-run artifacts. |
| V1 buildability | 18/20 | Deterministic JSON/YAML-ish input, policy checks, and Markdown/JSON receipts are small enough for V1. |
| Differentiation | 13/15 | Focuses on agent connector approvals rather than generic API mocking. |
| Agentic workflow leverage | 15/15 | Makes external-action planning safer and easier to delegate. |
| Distribution potential | 4/10 | Niche but useful for agent builders and connector maintainers. |

## Pitch

A local-first CLI and skill for turning proposed connector actions into dry-run receipts with approvals, risks, and rollback notes.

## Why It Matters

Agents routinely plan writes to GitHub, Slack, Notion, CRMs, project trackers, and email. Teams need a portable way to preview those actions, require approvals for risky scopes, and save evidence without calling live APIs.

## V1 Scope

- Parse connector action plans from JSON files.
- Validate required fields, action types, risk levels, and approval requirements.
- Render Markdown and JSON dry-run receipts.
- Include a SKILL.md for agent use.
- Include fixture-backed tests and a smoke command.

## Out of Scope

- Live connector execution.
- Credential handling.
- Remote policy fetching.
- Provider-specific SDK calls.

## Verification

- `npm test`
- `npm run check`
- `npm run smoke`
- Fixture CLI smoke against `fixtures/sample-plan.json`

## Agent Prompt

Build `connector-dryrun-kit` as a local-first agent skill and CLI for producing connector dry-run receipts. Keep all behavior deterministic, fixture-backed, and explicit about side-effect boundaries.

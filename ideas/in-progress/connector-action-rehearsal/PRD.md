# PRD: connector-action-rehearsal

Status: in-progress
Decision: build now
Updated: 2026-06-24

## Scorecard

Total: 86/100
Band: build now
Last scored: 2026-06-23
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 19/20 | Agents need to plan connector writes before touching CRMs, project managers, inboxes, and publishing surfaces. |
| Demand signal | 18/20 | Roger's workflows repeatedly require dry-run action plans, connector routing, approval ledgers, and follow-up drafting. |
| V1 buildability | 17/20 | A local rehearsal runner over declarative action fixtures can be shipped without live connector credentials. |
| Differentiation | 12/15 | Centers on agent approval rehearsal and evidence, not connector SDK execution. |
| Agentic workflow leverage | 15/15 | Helps agents produce reviewable plans, side-effect summaries, and approval prompts before external writes. |
| Distribution potential | 5/10 | Useful to agent builders integrating MCP, CRMs, PM tools, and messaging connectors. |

## Pitch

A reusable agent skill and CLI for rehearsing connector write actions against local fixtures, producing approval-ready plans without touching external accounts.

## Why It Matters

Agents can draft useful actions faster than humans can audit them. Connector workflows need a predictable intermediate artifact: what would be written, where, why, required approval, rollback notes, and evidence. `connector-action-rehearsal` makes that dry-run artifact standard and testable.

## V1 Scope

- CLI: `connector-action-rehearsal plan <fixture.json> --format json|markdown`.
- Declarative fixture schema for actions such as CRM note, task creation, meeting follow-up, email draft, and project update.
- Risk classification for read-only, draft-only, write-after-approval, and forbidden actions.
- Approval prompt generator with exact recipient/system, action summary, payload preview, and rollback note.
- Markdown and JSON outputs suitable for PR bodies or agent handoffs.
- Include `SKILL.md` with use cases, required inputs, side-effect boundaries, approval requirements, examples, and verification.

## Out of Scope

- Live connector execution.
- Credential handling.
- Sending messages, mutating CRMs, or creating tasks.
- Broad workflow automation beyond rehearsal artifacts.

## CLI/API Sketch

```bash
connector-action-rehearsal plan fixtures/meeting-followup.json --format markdown
connector-action-rehearsal plan fixtures/crm-note.json --fail-on forbidden
```

## Verification

- JSON schema tests for supported fixture types.
- Golden Markdown tests for approval plans.
- CLI smoke command over local fixtures.
- README with quickstart, examples, limitations, and safety notes.
- `npm test`, `npm run check`, `npm run smoke`, and `bash scripts/validate.sh`.

## Agent Prompt

Build `connector-action-rehearsal` as a public, local-first TypeScript CLI and agent skill that turns connector write intentions into deterministic dry-run approval plans. Do not call external services or handle credentials in V1.

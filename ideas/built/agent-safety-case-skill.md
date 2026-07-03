# PRD: agent-safety-case-skill

Status: built
Decision: ship

## Scorecard

Total: 82/100
Band: build now
Last scored: 2026-07-04
Scored by: oss-factory-agent-skills

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Agents need concise evidence before risky external actions. |
| Demand signal | 14/20 | Repeated across approval, connector, and launch workflows. |
| V1 buildability | 20/20 | Deterministic local plan parser and Markdown safety-case generator. |
| Differentiation | 12/15 | Produces action-specific safety cases, not generic policy summaries. |
| Agentic workflow leverage | 14/15 | Improves approval quality and handoffs. |
| Distribution potential | 5/10 | Strong fit for agent builders and workflow maintainers. |

## Pitch

Draft a compact safety case for an agent action plan before external side effects are approved.

## Why It Matters

Approval prompts are often vague. A small safety-case artifact helps an agent state the intended action, evidence, blast radius, rollback, and open questions before asking a human or tool gateway to proceed.

## Qualification

### Pub Test

Can this be explained clearly in one sentence? Yes: it turns an action plan into a reviewable approval safety case.

### Competitors / Adjacent Tools

- Approval ledgers — record decisions after the fact, but may not structure pre-approval evidence.
- Risk matrices — useful, but often too generic for agent tool calls.

### Star / Demand Signal

- Local connector and action-dry-run repos repeatedly need better approval summaries.
- Public agent frameworks increasingly document tool-risk gating.

### Real Problem

- Humans approving agent actions need the key facts quickly.
- Agents need a consistent format for external write, send, publish, and delete requests.

### V1 Buildability

- Parse a local YAML/JSON/Markdown action plan.
- Classify side effects.
- Emit a Markdown safety case and machine-readable summary.

## V1 Scope

- Local CLI and library API.
- Conservative risk classifier for common action verbs.
- Evidence, blast radius, rollback, and approval prompt sections.
- Fixtures and tests.
- `SKILL.md` with side-effect boundaries and approval requirements.

## Out of Scope

- Replacing human approval.
- Calling external systems.
- Enforcing policy in a live gateway.

## CLI/API Sketch

```bash
agent-safety-case fixtures/send-plan.json
agent-safety-case fixtures/repo-publish.md --format json
```

## Verification

- `npm test`
- `npm run check`
- `npm run smoke`

## Agent Prompt

Build `agent-safety-case-skill` as a reusable local-first approval-prep skill for agent action plans.

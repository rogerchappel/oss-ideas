# PRD: api-handshake-skill

Status: ready
Decision: ready

## Scorecard

Total: 79/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | API integrations fail around auth, webhooks, schemas, and environments. |
| Demand signal | 16/20 | Integration planning is common for startups and agents. |
| V1 buildability | 16/20 | Contract checklist and mock handshake are feasible. |
| Differentiation | 11/15 | Agent-oriented API integration readiness workflow. |
| Agentic workflow leverage | 13/15 | Useful for connector and product integration work. |
| Distribution potential | 6/10 | Good developer/business utility. |

## Pitch

Plan and validate an API integration handshake: auth, endpoints, webhooks, schemas, retries, and acceptance checks.

## Why It Matters

Before writing integration code, agents need a precise contract and test plan.

## V1 Scope

- Integration checklist generator.
- OpenAPI/schema/source note ingestion.
- Mock request/response fixtures.
- Webhook event checklist.
- Acceptance test plan.

## Out of Scope

- Live API calls by default.
- Secret management.

## CLI/API Sketch

```bash
api-handshake-skill plan specs/ --out integration-plan.md
api-handshake-skill fixtures integration-plan.md --out fixtures/
```

## Verification

- Fixture API specs.
- Tests for required auth/webhook/schema sections.

## Agent Prompt

Build `api-handshake-skill` as a local integration planning and fixture-generation skill for agents.

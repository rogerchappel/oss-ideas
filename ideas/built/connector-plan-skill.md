# PRD: connector-plan-skill

Status: built
Decision: built by OSS Factory Agent Skills on 2026-06-14
Classification: ship
Repository: https://github.com/rogerchappel/connector-plan-skill

## Scorecard

Total: 84/100
Band: build now
Last scored: 2026-06-13
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agents need to choose between connectors, dry-run external actions, and explain approval boundaries before touching live systems. |
| Demand signal | 16/20 | Roger's workflows repeatedly mention connector routing, dry-run action plans, CRM/project-management adapters, and safe external action prep. |
| V1 buildability | 18/20 | A fixture-backed planner can rank connectors and produce dry-run action plans from local manifests without credentials. |
| Differentiation | 12/15 | Focuses on pre-action planning and approval evidence rather than implementing every connector. |
| Agentic workflow leverage | 15/15 | Gives agents a safer handoff before using tools with side effects. |
| Distribution potential | 5/10 | Strong for agent builders and internal tool teams; examples will drive adoption. |

## Pitch

A local-first skill and CLI that turns connector manifests into ranked action plans with explicit dry-run steps, side effects, and approval gates.

## Why It Matters

Agents often know several possible tools but lack a consistent way to choose the least risky connector and explain what will happen before an external write. `connector-plan-skill` should produce a compact plan that humans can approve, edit, or reject.

## V1 Scope

- CLI: `connector-plan route`, `connector-plan dry-run`, and `connector-plan explain`.
- Parse local connector manifests with capabilities, required scopes, side effects, and rate-limit notes.
- Rank candidate connectors against a requested task and policy file.
- Emit Markdown and JSON dry-run plans with preconditions, intended writes, rollback notes, and approval requirements.
- Include `SKILL.md` for agents that need to prepare external action plans.
- Fixture-backed tests for CRM, project-management, messaging, and read-only research connectors.

## Out of Scope

- Live connector execution.
- Credential storage.
- OAuth flows or hosted routing.
- Claiming policy compliance beyond local manifest evidence.

## CLI/API Sketch

```bash
connector-plan route --task ./fixtures/follow-up-task.json --connectors ./fixtures/connectors
connector-plan dry-run --route route.json --policy ./fixtures/policy.json
connector-plan explain --route route.json --format markdown
```

## Verification

- Unit tests for manifest parsing, route scoring, policy gating, and report rendering.
- CLI smoke with local connector fixtures.
- README with approval workflow, examples, limitations, and safety notes.
- Package dry run including docs, fixtures, and `SKILL.md`.

## Agent Prompt

Build `connector-plan-skill` as a local-first connector routing and dry-run planning tool. It must never execute live external actions in V1; its job is to prepare clear, reviewable action plans with explicit approval boundaries.

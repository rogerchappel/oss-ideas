# PRD: pipedream-skill

Status: ready
Decision: ready

## Scorecard

Total: 75/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 15/20 | Agents need structured workflow specs for event-driven automations. |
| Demand signal | 15/20 | Pipedream-style workflows are common in API automation. |
| V1 buildability | 17/20 | Can generate reviewable workflow specs without live API calls. |
| Differentiation | 11/15 | Focus on agent handoff specs and safety review. |
| Agentic workflow leverage | 12/15 | Good connector ecosystem adapter. |
| Distribution potential | 5/10 | Practical but narrower. |

## Pitch

Generate and validate reviewable Pipedream-style workflow specs from agent intent.

## Why It Matters

Event-driven automations need precise triggers, inputs, secrets, and failure behavior. Agents should not hand over vague instructions.

## V1 Scope

- Workflow spec schema.
- Render human review docs.
- Detect secrets placeholders and side effects.
- Generate implementation checklist.

## Out of Scope

- Live Pipedream deployment.
- OAuth management.

## CLI/API Sketch

```bash
pipedream-skill plan "when a repo ships, draft a launch post" --out workflow.json
pipedream-skill review workflow.json
```

## Verification

- Spec schema tests.
- Snapshot tests for review docs.

## Agent Prompt

Build `pipedream-skill` as a local workflow-spec planner for agent-to-automation handoffs.

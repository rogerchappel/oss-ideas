# PRD: webhook-action

Status: ready
Decision: ready

## Scorecard

Total: 81/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Agents need simple webhook handoffs without unsafe blind POSTs. |
| Demand signal | 16/20 | Webhooks are universal across Zapier, Make, n8n, Pipedream, CRMs, and PM tools. |
| V1 buildability | 18/20 | Manifest validation and dry-run payload generation are tractable. |
| Differentiation | 12/15 | Focuses on agent-safe webhook manifests and audit output. |
| Agentic workflow leverage | 13/15 | Useful building block for connector skills. |
| Distribution potential | 5/10 | Practical devtool niche. |

## Pitch

Define, validate, and dry-run webhook actions for agents before any external POST happens.

## Why It Matters

Webhook automations are powerful but easy to misuse. Agents need schema checks and side-effect labels before sending anything.

## V1 Scope

- Webhook action manifest schema.
- Payload template validation.
- Redaction for secrets in logs.
- Dry-run output and curl preview.
- Optional explicit execution flag.

## Out of Scope

- Hosted webhook relay.
- Secret storage.

## CLI/API Sketch

```bash
webhook-action plan actions/create-task.json --data task.json
webhook-action send actions/create-task.json --data task.json --execute
```

## Verification

- Schema fixtures.
- Secret redaction tests.
- HTTP mock tests.

## Agent Prompt

Build `webhook-action` as a safe local webhook action planner for agent connector workflows.

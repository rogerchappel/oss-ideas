# PRD: n8n-skill

Status: ready
Decision: ready

## Scorecard

Total: 77/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Agents can draft workflow automation but need safer handoff artifacts. |
| Demand signal | 16/20 | n8n is a common open workflow automation platform. |
| V1 buildability | 16/20 | Start with workflow JSON linting and docs generation. |
| Differentiation | 11/15 | Agent-oriented workflow planning, not running n8n itself. |
| Agentic workflow leverage | 13/15 | Bridges agents to automation workflow files. |
| Distribution potential | 5/10 | Useful to automation builders. |

## Pitch

Help agents draft, inspect, and document n8n workflow JSON safely before import.

## Why It Matters

Workflow automations are difficult to review when generated as large JSON blobs. Agents need a skill that explains and validates the workflow.

## V1 Scope

- Parse n8n workflow JSON.
- Summarize nodes, triggers, credentials placeholders, and side effects.
- Validate required metadata and missing credential markers.
- Generate import checklist and dry-run notes.

## Out of Scope

- Connecting to a live n8n instance.
- Executing workflows.

## CLI/API Sketch

```bash
n8n-skill inspect workflow.json
n8n-skill checklist workflow.json --out REVIEW.md
```

## Verification

- Fixture workflows.
- Tests for credential placeholder detection and side-effect summary.

## Agent Prompt

Build `n8n-skill` as a local inspection and handoff tool for agent-authored n8n workflows.

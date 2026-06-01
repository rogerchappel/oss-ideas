# PRD: zap-action-notes

Status: ready
Decision: ready

## Scorecard

Total: 74/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 15/20 | Zap-style automation plans often lack enough detail to implement safely. |
| Demand signal | 15/20 | No-code automation users need clearer agent handoffs. |
| V1 buildability | 17/20 | Documentation/spec generation is feasible. |
| Differentiation | 10/15 | Reviewable action notes rather than live integration. |
| Agentic workflow leverage | 12/15 | Helps agents bridge to common automation tools. |
| Distribution potential | 5/10 | Useful content/tool hybrid. |

## Pitch

Turn agent automation intent into precise Zap-style action notes with triggers, fields, risk, and testing steps.

## Why It Matters

When an agent says "connect this to that," someone still needs to know exact fields, filters, and side effects.

## V1 Scope

- Intent-to-spec templates.
- Trigger/action/checklist sections.
- Field mapping tables.
- Test plan generation.

## Out of Scope

- Direct Zapier API usage.
- Credential handling.

## CLI/API Sketch

```bash
zap-action-notes plan "new GitHub release -> LinkedIn draft" --out ZAP.md
```

## Verification

- Fixture intents produce complete required sections.
- Tests for missing side-effect disclosure.

## Agent Prompt

Build `zap-action-notes` as a local planner for safe agent handoff to Zap-style automation tools.

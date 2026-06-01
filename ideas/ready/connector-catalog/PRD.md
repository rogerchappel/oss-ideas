# PRD: connector-catalog

Status: ready
Decision: ready

## Scorecard

Total: 80/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Connector capabilities and side effects need documentation. |
| Demand signal | 16/20 | Agents increasingly need tool catalogs. |
| V1 buildability | 18/20 | Static catalog schema and docs generation are feasible. |
| Differentiation | 11/15 | Side-effect-aware connector catalog for agents. |
| Agentic workflow leverage | 14/15 | Supports connector-router and action-dryrun. |
| Distribution potential | 4/10 | Infrastructure utility. |

## Pitch

Maintain a local catalog of connector actions, required fields, scopes, side effects, and approval requirements.

## Why It Matters

Agents cannot safely choose tools if the capabilities are vague. A catalog makes action selection inspectable.

## V1 Scope

- Connector/action YAML schema.
- Validation CLI.
- Markdown docs generator.
- Side-effect and approval-level fields.

## Out of Scope

- Live connector execution.
- OAuth or credential storage.

## CLI/API Sketch

```bash
connector-catalog check connectors/
connector-catalog docs connectors/ --out CONNECTORS.md
```

## Verification

- Fixture catalogs.
- Tests for required fields and side-effect labels.

## Agent Prompt

Build `connector-catalog` as a local schema and docs generator for agent connector capabilities.

# PRD: csv-checkmate

Status: ready
Decision: ready

## Scorecard

Total: 79/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | CSV problems are common and hard to spot manually. |
| Demand signal | 16/20 | Data teams and solo builders constantly validate CSVs. |
| V1 buildability | 18/20 | Schema and sample validation is straightforward. |
| Differentiation | 11/15 | Agent-friendly reports and repair suggestions. |
| Agentic workflow leverage | 12/15 | Useful data skill building block. |
| Distribution potential | 5/10 | Practical CLI utility. |

## Pitch

Validate CSV files against inferred or declared schemas and produce agent-readable repair reports.

## Why It Matters

Small CSV issues can break automations, dashboards, and model inputs. Agents need crisp diagnostics.

## V1 Scope

- Infer schema from CSV.
- Validate against schema JSON.
- Report row-level failures, type drift, missing columns, duplicate keys.
- Generate repair suggestions.

## Out of Scope

- Database loading.
- Spreadsheet UI.

## CLI/API Sketch

```bash
csv-checkmate infer data.csv > schema.json
csv-checkmate check data.csv --schema schema.json
```

## Verification

- Fixture CSVs with known errors.
- Tests for schema inference and failure reporting.

## Agent Prompt

Build `csv-checkmate` as a deterministic CSV validation CLI with agent-readable diagnostics.

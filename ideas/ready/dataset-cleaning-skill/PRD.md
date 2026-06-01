# PRD: dataset-cleaning-skill

Status: ready
Decision: ready

## Scorecard

Total: 83/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Dirty CSV/JSON data blocks product and ML work. |
| Demand signal | 16/20 | Data cleaning is universal. |
| V1 buildability | 18/20 | Deterministic profiling and cleaning suggestions are feasible. |
| Differentiation | 12/15 | Agent-readable cleaning plan and audit log. |
| Agentic workflow leverage | 13/15 | Lets agents improve data while preserving auditability. |
| Distribution potential | 6/10 | Useful public CLI. |

## Pitch

Profile messy CSV/JSON data, propose cleaning steps, and emit an auditable transform plan.

## Why It Matters

Agents working with data need to show what changed and why, not silently mutate datasets.

## V1 Scope

- Profile CSV/JSON files.
- Detect missing values, type drift, duplicates, invalid enums, and suspicious outliers.
- Emit cleaning recommendations and optional transformed output.
- Write audit log with row/field counts.

## Out of Scope

- Large distributed data processing.
- Model training.

## CLI/API Sketch

```bash
dataset-cleaning-skill profile data.csv --out report.md
dataset-cleaning-skill clean data.csv --plan clean.json --out cleaned.csv
```

## Verification

- Dirty fixture datasets.
- Tests for deterministic profiling and audit counts.

## Agent Prompt

Build `dataset-cleaning-skill` as a local data profiling and auditable cleaning-plan CLI.

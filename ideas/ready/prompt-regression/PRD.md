# PRD: prompt-regression

Status: ready
Decision: ready

## Scorecard

Total: 82/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Prompt edits cause subtle regressions. |
| Demand signal | 16/20 | Prompt versioning and evals are active needs. |
| V1 buildability | 17/20 | Static prompt packs and fixture outputs are feasible. |
| Differentiation | 12/15 | Focus on local prompt pack regression for agents. |
| Agentic workflow leverage | 14/15 | Helps maintain reusable skills. |
| Distribution potential | 5/10 | Practical AI engineering tool. |

## Pitch

Run local regression checks against prompt packs and skill instructions before agents use them.

## Why It Matters

Skills are code-like. Prompt changes should have tests, expected behavior, and reviewable diffs.

## V1 Scope

- Prompt pack manifest.
- Fixture inputs and expected output contracts.
- Diff report between prompt versions.
- Regression summary.

## Out of Scope

- Hosted model execution.
- Multi-provider benchmarking in V1.

## CLI/API Sketch

```bash
prompt-regression run prompts/ evals/
prompt-regression diff old/ new/
```

## Verification

- Fixture prompt packs.
- Tests for contract validation and diff summaries.

## Agent Prompt

Build `prompt-regression` as a local regression tool for prompt and skill instruction packs.

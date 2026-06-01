# PRD: eval-harness-skill

Status: ready
Decision: build now

## Scorecard

Total: 87/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 19/20 | Agent and prompt changes need regression checks. |
| Demand signal | 17/20 | Evals are a high-interest AI engineering category. |
| V1 buildability | 17/20 | Local fixture-based evals are realistic. |
| Differentiation | 13/15 | Small local eval harness aimed at agent skills and tool workflows. |
| Agentic workflow leverage | 15/15 | Directly improves skill quality. |
| Distribution potential | 6/10 | Strong devtool appeal. |

## Pitch

A local eval harness for agent skills: fixtures, expected behaviors, scoring rubrics, and regression reports.

## Why It Matters

Agent skills become real when they can be tested. This provides a lightweight harness before more complex observability systems.

## V1 Scope

- Define eval cases in YAML/JSON.
- Run command or script under test.
- Compare outputs against expected text/schema/rubric.
- Emit regression report.

## Out of Scope

- Hosted dashboards.
- Paid model-provider integrations.

## CLI/API Sketch

```bash
eval-harness-skill run evals/
eval-harness-skill init --type cli
```

## Verification

- Self-hosted fixture eval suite.
- Tests for pass/fail/report output.

## Agent Prompt

Build `eval-harness-skill` as a local regression harness for agent skills and CLI workflows.

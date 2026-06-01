# PRD: test-writer-skill

Status: ready
Decision: ready

## Scorecard

Total: 81/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Many small tools need fixture-backed tests. |
| Demand signal | 15/20 | Test generation is a common agent coding task. |
| V1 buildability | 17/20 | Can propose tests and fixture plans without auto-writing code. |
| Differentiation | 12/15 | Generates reviewable test plans for small OSS tools. |
| Agentic workflow leverage | 14/15 | Helps maintain garden quality. |
| Distribution potential | 6/10 | Good developer utility. |

## Pitch

Inspect a repo and generate concrete fixture-backed test plans that agents can implement safely.

## Why It Matters

High commit volume is only useful if it increases regression coverage. This skill makes test work systematic.

## V1 Scope

- Detect test framework and CLI entrypoints.
- Suggest edge cases and fixture files.
- Emit test skeleton plan and expected assertions.
- Optionally write pending test stubs behind a flag.

## Out of Scope

- Fully autonomous code modification by default.
- Complex app e2e generation.

## CLI/API Sketch

```bash
test-writer-skill ./repo --out test-plan.md
test-writer-skill ./repo --write-stubs
```

## Verification

- Fixture repos across test frameworks.
- Tests for framework detection and edge-case proposals.

## Agent Prompt

Build `test-writer-skill` as a local fixture-backed test planning CLI for agents improving small repos.

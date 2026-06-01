# PRD: docs-refresh-skill

Status: ready
Decision: ready

## Scorecard

Total: 80/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Docs drift from actual commands and APIs. |
| Demand signal | 16/20 | OSS docs maintenance is constant. |
| V1 buildability | 18/20 | Static checks and command extraction are feasible. |
| Differentiation | 11/15 | Finds drift and proposes specific doc edits. |
| Agentic workflow leverage | 13/15 | Directly useful for garden stewardship. |
| Distribution potential | 5/10 | Practical maintainer utility. |

## Pitch

Detect README/docs drift against package scripts, CLI help, examples, and current files.

## Why It Matters

Docs are credible only when commands still work and referenced files exist.

## V1 Scope

- Extract commands and file references from docs.
- Compare against package scripts, bin entries, and repo files.
- Generate drift report and suggested fixes.
- Optional command dry-run allowlist.

## Out of Scope

- Full documentation site crawling.
- Arbitrary shell execution by default.

## CLI/API Sketch

```bash
docs-refresh-skill ./repo --out docs-drift.md
```

## Verification

- Fixture repos with stale and current docs.
- Tests for missing file refs and stale package scripts.

## Agent Prompt

Build `docs-refresh-skill` as a local documentation drift detector for OSS maintenance agents.

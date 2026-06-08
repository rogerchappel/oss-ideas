# PRD: repo-review-skill

Status: built
Decision: ship

## Scorecard

Total: 84/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Repo review requires checking docs, tests, package metadata, and CI consistently. |
| Demand signal | 16/20 | Maintainers need lightweight audit tools. |
| V1 buildability | 18/20 | Static checks and command probes are feasible. |
| Differentiation | 12/15 | Agent-readable quality report and next commit suggestions. |
| Agentic workflow leverage | 14/15 | Feeds garden stewardship directly. |
| Distribution potential | 6/10 | Strong fit for Roger's OSS garden. |

## Pitch

Review a repo like a practical maintainer and output prioritized, testable improvement tasks for agents.

## Why It Matters

The garden steward needs a task miner. This tool can turn inspection into a queue of legitimate micro-commits.

## V1 Scope

- Inspect package metadata, README, tests, CI, examples, release config.
- Rank issues by reliability, usefulness, credibility, and release readiness.
- Emit JSON queue and Markdown summary.

## Out of Scope

- Making changes automatically.
- GitHub issue creation in V1.

## CLI/API Sketch

```bash
repo-review-skill ./repo --out review.json --summary review.md
```

## Verification

- Fixture repos with known gaps.
- Tests for finding missing scripts, examples, and CI files.

## Agent Prompt

Build `repo-review-skill` as a local repo audit and task-mining CLI for agentic maintenance.

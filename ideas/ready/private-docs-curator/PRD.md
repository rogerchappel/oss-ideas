# PRD: private-docs-curator

Status: ready
Decision: ready

## Scorecard

Total: 73/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Internal docs get stale and hard to navigate. |
| Demand signal | 14/20 | Common private-company workflow. |
| V1 buildability | 17/20 | Local docs inventory and freshness reports are feasible. |
| Differentiation | 10/15 | Privacy-first agent docs maintenance. |
| Agentic workflow leverage | 12/15 | Useful private repo lane. |
| Distribution potential | 4/10 | More private/internal value than public. |

## Pitch

Scan private docs folders for stale, duplicate, missing-owner, or action-needed documents and produce a review queue.

## Why It Matters

Private repos can contribute real commit volume when they improve company docs, but the changes need auditability and privacy boundaries.

## V1 Scope

- Local docs inventory.
- Freshness, duplicate-title, broken-link, and missing-owner checks.
- Suggested small doc commits.
- Redaction-safe summary.

## Out of Scope

- Uploading private docs.
- External publishing.

## CLI/API Sketch

```bash
private-docs-curator docs/ --out docs-review.md
```

## Verification

- Fixture docs tree.
- Tests for stale/missing-owner/broken-link checks.

## Agent Prompt

Build `private-docs-curator` as a local docs maintenance skill with privacy-first reporting.

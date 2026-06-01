# PRD: social-calendar-skill

Status: ready
Decision: ready

## Scorecard

Total: 74/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 15/20 | Promotion cadence needs planning across multiple tools. |
| Demand signal | 15/20 | Content calendars are common creator workflows. |
| V1 buildability | 17/20 | Local schedule generation is straightforward. |
| Differentiation | 10/15 | Repo-grounded OSS promotion calendar. |
| Agentic workflow leverage | 12/15 | Complements repo-to-content and video-skillkit. |
| Distribution potential | 5/10 | Useful but not core infrastructure. |

## Pitch

Build a review-only social calendar from repo launches, improvements, and content assets.

## Why It Matters

Roger needs consistent promotion without dumping every tool at once or repeating the same angle.

## V1 Scope

- Read repo/content inventory.
- Plan daily posts by theme, platform, and proof asset.
- Avoid repeating the same repo or hook too often.
- Export Markdown/CSV calendar.

## Out of Scope

- Posting or scheduling externally.
- Analytics ingestion.

## CLI/API Sketch

```bash
social-calendar-skill content/ --days 14 --out calendar.csv
```

## Verification

- Fixture content inventory.
- Tests for spacing and duplicate avoidance.

## Agent Prompt

Build `social-calendar-skill` as a local review-only content calendar planner for OSS promotion.

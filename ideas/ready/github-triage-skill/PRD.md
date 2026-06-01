# PRD: github-triage-skill

Status: ready
Decision: ready

## Scorecard

Total: 79/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Issues and PRs need prioritization and safe summaries. |
| Demand signal | 16/20 | GitHub triage is a common maintainer workflow. |
| V1 buildability | 16/20 | Start with exported JSON fixtures and optional gh integration. |
| Differentiation | 11/15 | Agent-safe triage plans rather than auto-comments. |
| Agentic workflow leverage | 14/15 | Helps maintain high-volume repo garden. |
| Distribution potential | 6/10 | Useful public devtool. |

## Pitch

Summarize GitHub issues and PRs into triage queues without posting comments by default.

## Why It Matters

Maintainers need useful triage, but agents should not speak publicly unless approved.

## V1 Scope

- Ingest `gh` JSON exports or local fixtures.
- Categorize issues/PRs by priority and type.
- Generate response drafts and next actions.
- Default to local files only.

## Out of Scope

- Auto-commenting or auto-closing.
- Repository admin changes.

## CLI/API Sketch

```bash
github-triage-skill issues.json prs.json --out triage.md
```

## Verification

- Fixture issue/PR JSON.
- Tests for priority grouping and no-post defaults.

## Agent Prompt

Build `github-triage-skill` as a local GitHub issue/PR triage planner with review-only defaults.

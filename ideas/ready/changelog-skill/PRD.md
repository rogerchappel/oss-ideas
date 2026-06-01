# PRD: changelog-skill

Status: ready
Decision: ready

## Scorecard

Total: 76/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Changelogs drift from actual commits and PRs. |
| Demand signal | 15/20 | Maintainers need release notes. |
| V1 buildability | 18/20 | Git log parsing and Markdown output are straightforward. |
| Differentiation | 10/15 | Small, local, evidence-linked changelog generator. |
| Agentic workflow leverage | 12/15 | Useful release-readiness primitive. |
| Distribution potential | 5/10 | Practical utility. |

## Pitch

Generate evidence-linked changelog drafts from commits, tags, and PR metadata.

## Why It Matters

Release communication should match what changed, not what an agent imagines changed.

## V1 Scope

- Parse git commits between refs.
- Group by conventional commit-ish categories.
- Link entries to commits.
- Generate Markdown changelog draft and release summary.

## Out of Scope

- Publishing GitHub releases.
- Semantic version decisions.

## CLI/API Sketch

```bash
changelog-skill --from v0.1.0 --to HEAD --out CHANGELOG.md
```

## Verification

- Fixture git repo.
- Tests for grouping and commit links.

## Agent Prompt

Build `changelog-skill` as a local evidence-linked changelog generator for release prep.

# repobeacon

Status: built

## Scorecard

Total: 85/100
Band: strong
Last scored: 2026-05-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | OSS maintainers need a compact view of CI, issues, releases, branches, and local dirty state. |
| Demand signal | 17/20 | Inspired by RepoBar and common GitHub dashboard needs. |
| V1 buildability | 18/20 | Local git + fixture-backed GitHub data CLI/TUI is feasible today. |
| Differentiation | 13/15 | Agentic batch-maintenance focus and static profile output. |
| Agentic workflow leverage | 13/15 | Helps Roger monitor many repos created by agent waves. |
| Distribution potential | 6/10 | Strong screenshot/readme potential. |

## Pitch

A terminal-first repo radar for many small OSS projects: local git state, fixture-backed GitHub health, release freshness, and a static dashboard for profile bragging rights.

## Why It Matters

As Roger's OSS portfolio grows, keeping dozens of repos healthy becomes the hard part. A repo beacon turns that into a glanceable workflow.

## Attribution / Inspiration

Inspired by the category represented by steipete/RepoBar. Do not copy name, UI, screenshots, docs, or implementation. Make an original CLI/TUI/static-dashboard tool.

## V1 Scope

- Scan a projects directory for git repos.
- Show branch, dirty state, ahead/behind, last commit, and worktree count.
- Accept fixture-backed GitHub metadata for CI/issues/releases.
- Render terminal table, JSON, and static HTML dashboard.
- Include safety docs for optional future GitHub token use.

## Out of Scope

- Native menu bar app.
- Auto-sync/pull by default.
- Live OAuth.

## Verification

- Unit tests for repo scanning, fixture parsing, sorting, renderers.
- CLI smoke against local fixture repos.

## Agent Prompt

Build `repobeacon` as an original local-first repo dashboard inspired by the RepoBar category. Use StackForge, docs, tests, smokes, publish to GitHub, set metadata, protect main.

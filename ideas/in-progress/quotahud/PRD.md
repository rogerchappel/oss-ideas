# quotahud

Status: in-progress

## Scorecard

Total: 84/100
Band: strong
Last scored: 2026-05-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Developers using multiple agent/LLM tools need fast local visibility into usage, spend, and reset windows. |
| Demand signal | 17/20 | Inspired by popular menu-bar quota/status tooling such as steipete/CodexBar; Roger already built limitbar, so this should focus on cross-repo/profile presentation and fixture-backed adapters. |
| V1 buildability | 17/20 | CLI/TUI core with JSON adapters and static HTML/menu-bar-ready output is feasible today. |
| Differentiation | 13/15 | Roger-flavoured local-first dashboard for agentic OSS factory work, not a direct clone. |
| Agentic workflow leverage | 13/15 | Helps avoid failed runs caused by provider limits and runaway sessions. |
| Distribution potential | 6/10 | Strong if screenshots and examples are polished. |

## Pitch

A tiny local-first quota HUD for agent builders: turn local usage fixtures, OpenClaw session summaries, and manual provider budgets into a glanceable terminal dashboard plus static status badge assets.

## Why It Matters

Professional developer profiles often show polished tools around their own workflow. Roger's workflow is agent-heavy; a quota HUD makes that visible and useful without scraping credentials or copying CodexBar.

## Attribution / Inspiration

Inspired by the product category represented by steipete/CodexBar. Do not copy its name, UI, provider internals, screenshots, or implementation. Build an original local-first CLI/TUI with attribution in docs.

## V1 Scope

- Fixture-backed provider/session summary adapters.
- Manual budget config with reset windows.
- CLI commands: `status`, `render`, `explain`, `doctor`.
- Static HTML/SVG badge output for README/profile use.
- Safety docs: no credential scraping, no cookie access, no hidden network.

## Out of Scope

- Native macOS app.
- Browser-cookie extraction.
- Real provider private APIs.
- Background daemon.

## Verification

- Unit tests for adapters, alert thresholds, reset-window math, and render output.
- `npm test`, `npm run check`, `npm run build`, `npm run smoke`, `bash scripts/validate.sh`.
- Real CLI smoke with fixtures.

## Agent Prompt

Build `quotahud` as an original local-first CLI/TUI quota dashboard inspired by the broad CodexBar category, not copied from it. Use StackForge, generate PRD/TASKS/ORCHESTRATION docs, make ~30-50 meaningful commits, publish to GitHub, set description/topics, and protect main.

# PRD: project-sync-skill

Status: ready
Decision: ready

## Scorecard

Total: 80/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Project state is fragmented across tasks, docs, commits, and chats. |
| Demand signal | 15/20 | PM integrations are common agent use cases. |
| V1 buildability | 18/20 | Local state reconciliation and report generation are tractable. |
| Differentiation | 12/15 | Agent-oriented sync plan, not another PM app. |
| Agentic workflow leverage | 13/15 | Gives agents clean project status primitives. |
| Distribution potential | 5/10 | Useful workflow tool. |

## Pitch

Read project files and emit a structured project-management sync plan for Linear, GitHub Issues, Notion, or local trackers.

## Why It Matters

Agents need to know what changed, what is blocked, and what should become a task before updating external PM systems.

## V1 Scope

- Inspect git log, TODO docs, task files, and PRD/TASKS docs.
- Emit status summary, blockers, proposed tasks, and dry-run updates.
- Provider-neutral output schema.

## Out of Scope

- Direct PM writes.
- Live workspace crawling beyond local repo.

## CLI/API Sketch

```bash
project-sync-skill ./repo --out project-sync.json
project-sync-skill render project-sync.json --format markdown
```

## Verification

- Fixture project state with expected sync output.
- Tests for deduplicating task proposals.

## Agent Prompt

Build `project-sync-skill` as a local project-state summarizer and PM update planner for agents.

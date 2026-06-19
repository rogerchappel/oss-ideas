# PRD: skillroute

Status: built
Decision: ship
Factory run: 2026-06-19 agent-skill lane
Repo: https://github.com/rogerchappel/skillroute

## Queue Note

The `ideas/ready` queue was empty and `ideas/backlog` was not present, so this PRD was created as replenishment for an agent-skill gap before building.

## Pitch

`skillroute` selects which reusable agent skills should activate for a task, explains why, and emits a dry-run plan before an agent acts.

## Why It Matters

Agents need a durable way to choose skills from task evidence instead of guessing from vague trigger words. A local deterministic router makes skill activation reviewable before any side-effectful action.

## V1 Scope

- Local-first JavaScript CLI.
- JSON skill catalog plus task text input.
- Ranked Markdown and JSON route plans.
- Approval and side-effect summaries per selected skill.
- Fixture-backed tests and smoke command.
- Reusable `SKILL.md` for agent use.

## Out of Scope

- Installing, applying, or running skills.
- Calling LLM APIs.
- Live external writes.

## Verification

- `npm test`
- `npm run check`
- `npm run build`
- `npm run smoke`
- `bash scripts/validate.sh`

# PRD: followdraft-skill

Status: built
Decision: ship
Factory run: 2026-06-19 agent-skill lane
Repo: https://github.com/rogerchappel/followdraft-skill

## Queue Note

The `ideas/ready` queue was empty and `ideas/backlog` was not present, so this PRD was created as replenishment for an agent-skill gap before building.

## Pitch

`followdraft-skill` turns rough meeting notes into follow-up email drafts, action registers, and approval checklists without sending messages.

## Why It Matters

Agents often draft follow-ups from messy meeting notes, but they need explicit action owners, blocked external sends, and redaction hints before anything reaches a customer or CRM.

## V1 Scope

- Local-first JavaScript CLI.
- Meeting notes input.
- Markdown and JSON follow-up packets.
- Action extraction, blocker detection, and email redaction.
- Fixture-backed tests and smoke command.
- Reusable `SKILL.md` for agent use.

## Out of Scope

- Sending email.
- Updating CRM/project-management systems.
- Calling LLM APIs.
- Treating generated drafts as approved messages.

## Verification

- `npm test`
- `npm run check`
- `npm run build`
- `npm run smoke`
- `bash scripts/validate.sh`

# meeting-action-dryrun-skill

Status: ready

## Summary

Build a local-first skill that turns meeting notes into proposed follow-up
actions, approval requirements, and dry-run payloads without sending messages or
writing to external systems.

## Users

- Agents drafting follow-up emails and project-management updates.
- Operators who need to review side effects before connector calls.
- Teams that want auditable handoff plans after meetings.

## MVP

- CLI accepts Markdown meeting notes and optional attendee metadata.
- Extracts candidate follow-ups with owner, due date, channel, and risk level.
- Emits a dry-run action plan JSON plus a human review Markdown brief.
- Supports `--strict` mode that fails if owners or evidence are missing.
- Includes fixtures, tests, smoke command, `SKILL.md`, and release-candidate docs.

## Safety

No email, calendar, CRM, or project-management writes. Generated payloads are
review artifacts only.

## Classification

agent-skill; meeting-prep; action-dryrun

# connector-approval-ledger-skill

Status: ready

## Summary

Build a small agent skill for maintaining a local approval ledger for connector
plans, so agents can show what was proposed, who approved it, and what remains
blocked before any external action executor runs.

## Users

- Agent operators reviewing connector dry-runs.
- Maintainers building safe action routers.
- CI jobs that need a local approval artifact before deployment or publication.

## MVP

- CLI creates, validates, and summarizes ledger entries from local JSON.
- Supports statuses: `proposed`, `approved`, `rejected`, `expired`.
- Enforces expiry timestamps for approvals.
- Emits Markdown review summaries and machine-readable audit records.
- Includes fixtures, tests, smoke command, `SKILL.md`, and release-candidate docs.

## Safety

No live connector calls. The ledger records review state only and must not be
treated as an executor.

## Classification

agent-skill; connector-router; action-dryrun; audit

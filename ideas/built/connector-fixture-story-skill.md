# connector-fixture-story-skill

Status: built
Lane: agent-skill
Owner: oss-factory-agent-skills
Repo: https://github.com/rogerchappel/connector-fixture-story-skill
PR: https://github.com/rogerchappel/connector-fixture-story-skill/pull/1

## Problem

Connector fixtures prove an action can be represented, but they are rarely easy for reviewers to understand. Agents need a repeatable way to turn fixture bundles into dry-run stories, permission notes, and review checklists before any live connector action is attempted.

## Product

Build a local-first skill and CLI that reads connector action fixtures and renders:

- scenario narrative
- tool and permission inventory
- dry-run action sequence
- redaction and safety findings
- reviewer checklist

## MVP Requirements

- Accept a JSON fixture bundle with scenarios and actions.
- Validate required fields and flag missing approvals or unsafe live-write intent.
- Render Markdown and JSON reports.
- Include fixture-backed tests and a smoke command.
- Document side-effect boundaries and approval requirements in `SKILL.md`.

## Safety

The tool must never execute connector actions. It only inspects fixtures and emits local review artifacts. It should treat external writes, live account changes, and missing approval records as review blockers.

## Classification

ship

## Verification

- `npm test` passed
- `npm run check` passed
- `npm run smoke` passed
- `bash scripts/validate.sh` passed

## Notes

Initial public build completed with `main` protected best-effort and release-candidate branch `release-candidate/connector-fixture-story-skill`.

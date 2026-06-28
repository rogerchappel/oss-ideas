# Connector Fixture Linter Skill PRD

Status: in-progress

## Problem

Connector and action skills often rely on example fixtures that silently drift from their declared scopes, dry-run claims, and approval boundaries. Agents need a small local linter that checks fixture files before using them as evidence for connector readiness.

## Users

- Connector skill authors
- Agent QA reviewers
- Maintainers preparing release-candidate PRs for tool/action packages

## MVP

- CLI reads fixture JSON files or directories
- Validates required fields: connector, action, mode, scopes, approval, input, expected
- Flags live/write actions without explicit approval metadata
- Flags fixture inputs that look like real secrets or personal data
- Produces JSON and markdown lint reports
- Includes a `SKILL.md` with use cases, inputs, side-effect boundaries, and verification

## Non-Goals

- No live connector calls
- No schema registry dependency
- No mutation of fixture files

## Acceptance

- Fixture-backed tests cover valid fixtures, missing fields, approval failures, secret warnings, and directory traversal
- `npm test`, `npm run check`, `npm run build`, and `npm run smoke` pass locally
- README documents quickstart, examples, limitations, safety notes, and report format
- Release-candidate PR records verification results

## Classification

Initial target: ship if the linter catches unsafe connector fixtures while remaining fully local.

# Connector Dry-Run Receipt Skill

Status: built
Classification: ship

## Summary

Build a local-first agent skill that converts proposed connector actions and dry-run results into human-readable receipts showing intended writes, approval state, affected records, and rollback notes.

## Users

- Agents preparing Slack, CRM, GitHub, or project-management connector actions
- Operators who want a review artifact before allowing writes
- Maintainers designing reusable approval workflows

## MVP

- Node.js CLI and library API
- Accept a JSON dry-run plan with connector, action, target, approval mode, and simulated changes
- Validate required safety fields and classify risk
- Render markdown and JSON receipts
- Include approval checklist and rollback notes
- Include SKILL.md with use cases, inputs, side-effect boundaries, approval requirements, examples, and validation workflow
- Fixture-backed tests and smoke command

## Non-goals

- Executing connector writes
- Storing credentials
- Calling live external services

## Acceptance

- `npm test`, `npm run check`, and `npm run smoke` pass locally
- README documents quickstart, examples, limitations, and safety notes
- Release-candidate PR includes verification results

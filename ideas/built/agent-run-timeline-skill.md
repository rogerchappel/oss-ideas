# Agent Run Timeline Skill

Status: built
Classification: ship

## Summary

Build a local-first agent skill that turns timestamped agent logs, tool calls, and verification notes into a compact execution timeline with evidence links, gap detection, and follow-up actions.

## Users

- Agent builders auditing long autonomous runs
- Maintainers preparing handoffs from cron or CI agent sessions
- Reviewers who need a quick view of what happened, what was verified, and what remains

## MVP

- Node.js CLI and library API
- Accept JSON run events from a fixture or stdin
- Normalize events into phases: intake, planning, change, verification, reporting
- Detect missing verification, long idle gaps, unclosed blockers, and unreported side effects
- Render markdown and JSON timeline reports
- Include SKILL.md with use cases, inputs, side-effect boundaries, approvals, examples, and validation workflow
- Fixture-backed tests and smoke command

## Non-goals

- Reading private chat histories directly
- Writing to external trackers
- Replacing full observability pipelines

## Acceptance

- `npm test`, `npm run check`, and `npm run smoke` pass locally
- README documents quickstart, examples, limitations, and safety notes
- Release-candidate PR includes verification results

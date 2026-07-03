# Run Retro Skill

Status: in-progress

## Summary

Build a local-first agent skill that turns an agent run transcript or event log into a concise retrospective: objective, key decisions, verification, unresolved risks, and next actions.

## Target Users

- Agent operators reviewing long autonomous runs
- Maintainers preparing handoffs or release readiness notes
- OSS contributors who need transparent run audit summaries

## MVP

- CLI reads a structured run log fixture
- Library API groups events into timeline, decisions, evidence, risks, and follow-ups
- Fixture-backed tests cover clean runs, blocked runs, verification failures, and missing evidence
- `SKILL.md` documents validation workflow and privacy boundaries

## Safety

The tool must be offline and redact obvious secrets from reports. It must not upload logs or send messages.

## Release Candidate Bar

- Useful README quickstart
- Product docs and orchestration docs
- Smoke command and tests
- Public repo under `rogerchappel/run-retro-skill`


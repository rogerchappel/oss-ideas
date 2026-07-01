# Skill Context Freeze

Status: in-progress

## Summary

Build a local-first agent skill that turns loose run context into a bounded context freeze packet: scope, assumptions, permitted tools, files to inspect, and verification evidence to capture before implementation.

## User

Agent builders and maintainers who need repeatable handoffs between planning, coding, and review agents without leaking private data or overloading context windows.

## MVP

- CLI that reads a Markdown brief and optional JSON metadata.
- Extracts goals, constraints, risks, required files, and validation commands.
- Emits Markdown and JSON freeze packets.
- Flags missing approvals and unsafe external side effects.
- Includes fixture-backed tests and local smoke command.

## Safety

The skill must be local-only. It must never call external services, write to remote accounts, or include secrets in generated packets.

## Acceptance

- `npm test`, `npm run check`, `npm run build`, and `npm run smoke` pass.
- `SKILL.md` describes when to use the skill, inputs, side-effect boundaries, approval requirements, examples, and validation.
- Release-candidate PR includes exact verification evidence.

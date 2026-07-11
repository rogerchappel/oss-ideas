# PRD: agent-fixture-smoke

Status: ready
Decision: build now
Updated: 2026-07-11

## Pitch

`agent-fixture-smoke` turns small agent workflow fixtures into executable smoke plans with deterministic checks, expected files, and human-readable release evidence.

## Why It Matters

Agent skills and connectors need cheap confidence checks before release. Maintainers often have examples, but not a consistent way to prove that prompts, inputs, outputs, and side-effect boundaries still match the docs.

## V1 Scope

- CLI: `agent-fixture-smoke plan <fixtures>`, `agent-fixture-smoke run <fixtures>`, and `agent-fixture-smoke report <fixtures>`.
- Read JSON fixtures describing prompts, commands, expected outputs, expected files, and forbidden side effects.
- Execute only explicitly local commands, with dry-run default behavior.
- Produce JSON and Markdown release evidence.
- Include fixtures for pass, fail, skipped, and side-effect-blocked cases.
- Provide an agent `SKILL.md` usage guide.

## Out of Scope

- Calling live LLMs.
- Writing to remote services.
- Interactive browser automation.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, `bash scripts/validate.sh`, and a CLI fixture smoke run.


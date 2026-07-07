# skillrun-ci-harness

Status: ready
Type: agent-skill OSS repo

## Problem

Agent skills often ship with prose instructions but no repeatable smoke harness. Maintainers need a local-first way to describe expected inputs, side-effect boundaries, validation commands, and acceptance checks in a machine-readable fixture.

## MVP

- Node.js CLI that reads a skill fixture YAML/JSON file.
- Normalizes cases into deterministic validation plans.
- Verifies required files, command declarations, side-effect labels, and expected evidence fields.
- Emits JSON and Markdown reports suitable for pull requests.
- Includes fixture-backed tests and a no-network smoke command.

## Safety

The tool never executes declared skill commands in MVP mode. It only validates fixture structure and produces a dry-run plan.

## Release candidate bar

- `npm test`, `npm run check`, `npm run smoke`.
- Public repo with `SKILL.md`, docs, examples, and release-candidate PR.

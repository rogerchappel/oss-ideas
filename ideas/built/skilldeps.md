# skilldeps

Status: built

## Summary

Build a local-first agent skill that reads a folder of `SKILL.md` files and produces a dependency/contract map: required tools, relative references, side effects, validation steps, and missing referenced files.

## User Problem

Agent builders often ship skills that look complete but break when a referenced script, fixture, approval boundary, or validation command is missing. Reviewers need a quick way to inspect portability and dependency risk before installing or sharing a skill.

## MVP

- CLI accepts one or more skill paths or a skill root.
- Parser extracts `when to use`, required inputs/tools, side-effect language, validation commands, and relative file references.
- Analyzer flags missing relative references, missing validation sections, vague side-effect boundaries, and likely external-action requirements.
- Emits JSON and Markdown reports.
- Includes fixtures and tests for complete, incomplete, and missing-reference skills.
- Includes `SKILL.md` describing when agents should use this audit skill.

## Safety

Local read-only analysis only. It must not install skills, execute referenced scripts, call external services, or mutate the inspected skill folders.

## Classification Target

ship

## Build Result

- Repo: https://github.com/rogerchappel/skilldeps
- Release-candidate PR: https://github.com/rogerchappel/skilldeps/pull/1
- Classification: ship
- Verification: `npm test`, `npm run check`, `npm run smoke`, `npm pack --dry-run`

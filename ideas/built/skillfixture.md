# skillfixture

Status: built

## Summary

Build a local-first CLI that turns agent-skill documentation into reusable fixture packs for tests, demos, and regression checks.

## Problem

Skill authors often describe examples in prose but do not preserve them as runnable fixtures. A lightweight extractor can help agents create repeatable tests without touching external systems.

## MVP

- Parse `SKILL.md` examples and fenced blocks.
- Generate a fixture directory with `cases.json`, prompt files, expected checks, and a manifest.
- Support dry-run preview before writing files.
- Include fixture-backed tests and smoke commands.
- Provide skill instructions, safety notes, docs, and release candidate notes.

## Non-goals

- No remote writes.
- No automatic test execution against external services.
- No generated secrets or private data.

## Classification Criteria

- Ship if generated fixtures are deterministic and useful for CLI/import smoke tests.
- Incubate if extraction needs more conventions for varied skill docs.
- Kill/merge if it overlaps a future skill packager without standalone regression value.

## Build Result

- Repo: https://github.com/rogerchappel/skillfixture
- Release candidate branch: `release-candidate/skillfixture`
- PR: https://github.com/rogerchappel/skillfixture/pull/1
- Classification: ship
- Verification: `npm test`, `npm run check`, `npm run smoke`, `npm run validate` passed.
- Branch protection: `main` protected with required PR review.

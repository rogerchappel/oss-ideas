# skillcase

Status: built

## Summary

Build a local-first CLI that turns an agent `SKILL.md` into fixture-backed validation case templates and a repeatable skill test checklist.

## Problem

Many agent skills explain when to use them, but lack concrete regression cases that future agents can run before changing the skill. Skill maintainers need a way to bootstrap test fixtures and keep expected inputs, side effects, and verification steps explicit.

## MVP

- Parse one or more `SKILL.md` files.
- Derive candidate test cases from when-to-use bullets, required inputs, side-effect boundaries, examples, and validation steps.
- Generate Markdown and JSON fixture templates without overwriting existing files unless explicitly requested.
- Provide a `check` mode that flags skills with no examples, no validation workflow, or no negative case.
- Include tests for fixture generation, overwrite protection, and checklist findings.
- Provide `SKILL.md`, PRD, tasks, orchestration notes, smoke command, and release candidate notes.

## Non-goals

- No LLM-generated test content.
- No execution of external tools referenced by the skill.
- No mutation of installed skill directories by default.

## Classification Criteria

- Ship if maintainers can generate useful fixture skeletons and catch missing regression coverage.
- Incubate if generated cases need more tuning for varied skill formats.
- Kill/merge if it overlaps an existing fixture tool without a more focused skill-regression workflow.

## Build Result

- Repo: https://github.com/rogerchappel/skillcase
- Release candidate branch: `release-candidate/skillcase`
- PR: https://github.com/rogerchappel/skillcase/pull/1
- Classification: ship
- Verification: `npm test`, `npm run check`, `npm run smoke`, and `npm run validate` passed.
- Branch protection: `main` protected with required PR review.

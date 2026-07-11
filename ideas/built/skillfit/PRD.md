# PRD: skillfit

Status: built
Decision: ship
Repo: https://github.com/rogerchappel/skillfit
Release candidate PR: https://github.com/rogerchappel/skillfit/pull/1
Updated: 2026-07-12

## Pitch

A local-first CLI for checking whether an agent skill is ready to reuse, package, or share.

## Why It Matters

Agent skills are most useful when activation, required inputs, side-effect boundaries, examples, and verification are explicit. `skillfit` gives agents and maintainers a deterministic preflight gate before a skill becomes durable workflow infrastructure.

## V1 Scope

- Read a skill directory containing `SKILL.md`.
- Score readiness across activation, inputs, side effects, examples, verification, portability, and substance.
- Emit Markdown and JSON reports.
- Include fixtures, tests, smoke command, and reusable skill instructions.

## Verification

- `npm test`: pass
- `npm run check`: pass
- `npm run build`: pass
- `npm run smoke`: pass

## Outcome

Built as public repo `rogerchappel/skillfit`; branch `release-candidate/skillfit`; classification `ship`.

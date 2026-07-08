# PRD: skill-plan-lint

Status: ready
Decision: build now
Updated: 2026-07-08
Repo: https://github.com/rogerchappel/skill-plan-lint

## Pitch

A local-first linter for agent skill instructions that checks whether a SKILL.md or skill proposal gives agents enough operational detail to use the skill safely and repeatably.

## Source Attribution

Original OSS Factory idea from repeated agent-skill packaging reviews in Roger's public skill repos. It is inspired by documentation linting and release-readiness gates, but focused on agent-use boundaries rather than prose style.

## Problem

Reusable skills often omit when to use them, required inputs, side-effect boundaries, approval requirements, examples, or verification steps. That makes skills harder to install, audit, and reuse across agents.

## V1 Scope

- CLI: `skill-plan-lint check <path>` and `skill-plan-lint report <path>`.
- Parse Markdown skill files and proposal docs.
- Score required sections: trigger, inputs/tools, side effects, approvals, examples, validation, limitations, and fallback behavior.
- Emit JSON and Markdown reports with evidence line numbers.
- Include fixture-backed tests and a smoke command.
- Never call external services or mutate checked files by default.

## Out of Scope

- Judging whether a skill is strategically good.
- Editing skill files automatically in V1.
- Enforcing org policy outside local lint output.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and `bash scripts/validate.sh`.

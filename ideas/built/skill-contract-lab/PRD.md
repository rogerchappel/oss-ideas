# skill-contract-lab

Status: built
Decision: ship
Created: 2026-06-22
Updated: 2026-06-22
Repo: https://github.com/rogerchappel/skill-contract-lab
Release candidate PR: https://github.com/rogerchappel/skill-contract-lab/pull/1

Outcome: Built a public local-first SKILL.md operational contract checker with fixtures, tests, validation script, release-candidate branch, and protected main.

## Scorecard

Total: 84/100
Band: build now
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Reusable agent skills often omit inputs, tools, side-effect limits, and validation steps. |
| Demand signal | 17/20 | Roger's Skill Workshop and OSS skill lanes need a portable contract checker. |
| V1 buildability | 18/20 | Markdown contract extraction and deterministic lint rules are straightforward. |
| Differentiation | 12/15 | Complements skill packaging by focusing on operational contracts. |
| Agentic workflow leverage | 15/15 | Helps agents decide when a skill is safe to apply. |
| Distribution potential | 4/10 | Useful for agent-skill authors and reviewers. |

## Pitch

A fixture-backed CLI and skill that validates `SKILL.md` files for required use cases, inputs, tools, side-effect boundaries, approvals, examples, and verification workflow.

## Why It Matters

Skills become risky when they are prompt packs with missing operational contracts. A simple local checker helps authors ship skills that agents can apply safely and reviewers can trust.

## V1 Scope

- Parse `SKILL.md` files and extract expected contract sections.
- Report missing, thin, or ambiguous sections.
- Emit Markdown and JSON review reports.
- Include an agent-facing SKILL.md.
- Include tests, fixtures, smoke command, and release-candidate docs.

## Out of Scope

- Applying or installing skills.
- Marketplace hosting.
- LLM-based judging.
- Remote repository scanning.

## Verification

- `npm test`
- `npm run check`
- `npm run smoke`
- CLI fixture smoke against `fixtures/good-skill/SKILL.md`

## Agent Prompt

Build `skill-contract-lab` as a local-first agent skill and CLI for validating the operational contract of SKILL.md files. Prefer deterministic rules, clear reports, and no external side effects.

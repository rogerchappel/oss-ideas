# Agent Eval Pack Skill

Status: built

## Summary

Build a local-first agent skill that packages run notes into reusable regression eval fixtures with redaction, reviewer briefs, summaries, and command-evidence validation.

## Problem

Useful agent failures and successes are often trapped in ad hoc notes. Roger needs a repeatable way to turn those notes into eval cases that future agent runs can replay or review.

## Users

- Agent builders collecting regression examples
- Maintainers reviewing release readiness
- Eval authors turning run notes into structured fixtures

## MVP

- `SKILL.md` describing when to use the skill, required inputs, side-effect boundaries, approvals, examples, and verification
- CLI with `init`, `build`, and `validate` commands
- Library API for parsing run notes, redacting secrets, building packs, validating packs, and rendering briefs
- Fixture-backed tests
- Smoke command that writes a sample eval pack
- Release-candidate docs and orchestration notes

## Inputs

- Markdown run notes with scenario, inputs, expected behavior, forbidden behavior, evidence, rubric, risk level, tags, and outcome
- Optional ID prefix and command-evidence requirement

## Outputs

- `evals.json`
- `review-brief.md`
- JSON summary for batch review queues

## Safety

The skill is local-first and must not upload run notes, publish evals, or write to external systems. Redaction is heuristic and shared eval packs require human review.

## Verification

- `npm test`
- `npm run check`
- `npm run build`
- `npm run smoke`
- `bash scripts/validate.sh`

## Classification

Built repository: https://github.com/rogerchappel/agent-eval-pack-skill
Release-candidate branch: release-candidate/agent-eval-pack-skill
Classification: ship

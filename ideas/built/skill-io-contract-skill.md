# Skill IO Contract Skill

Status: built
Updated: 2026-07-16

## Summary

Build a local-first agent skill that validates reusable `SKILL.md` files against an explicit input/output contract and fixture schema before release.

## Users

- Agents packaging reusable skills.
- Maintainers reviewing release-candidate skill PRs.
- Automation lanes that need local evidence before sharing a skill.

## MVP

- CLI validates required sections in `SKILL.md`.
- Optional JSON fixture checks for inputs, expected outputs, side effects, approvals, and verification commands.
- Markdown report with pass/fail score.
- Fixture-backed tests, smoke command, package metadata, and release-candidate notes.

## Safety

Read-only for source artifacts. It writes only the requested report path and never executes fixture commands.

## Outcome

Built as `rogerchappel/skill-io-contract-skill`.


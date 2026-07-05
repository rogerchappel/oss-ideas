# Connector Fixture Linter Skill

Status: built

## Summary

Build a local-first agent skill that lints connector action fixtures before rehearsal or release, checking required metadata, write approvals, sensitive inputs, and expected write declarations.

## Problem

Connector fixtures can accidentally mix read-only examples, write-like actions, missing approval rationale, and sensitive values. Roger needs a reusable guardrail before agents rehearse connector routes.

## Users

- Connector skill authors
- Agent builders preparing dry-run action plans
- Reviewers auditing connector fixture packs

## MVP

- `SKILL.md` describing when to use the skill, required inputs, side-effect boundaries, approvals, examples, and verification
- CLI that lints a fixture file or directory
- Library rules for required fields, scopes, modes, approval metadata, sensitive values, and expected writes
- Markdown and JSON reports
- Fixture-backed tests
- Smoke command for good and bad fixture examples
- Release-candidate docs and orchestration notes

## Inputs

- JSON connector fixture files or directories
- Optional output format

## Outputs

- Markdown or JSON lint report
- Error and warning counts suitable for CI or agent review

## Safety

The skill is local-first and must not execute connector actions or touch live accounts. Findings are advisory unless the caller chooses to fail a release gate.

## Verification

- `npm test`
- `npm run check`
- `npm run build`
- `npm run smoke`
- `bash scripts/validate.sh`

## Classification

Built repository: https://github.com/rogerchappel/connector-fixture-linter-skill
Release-candidate branch: release-candidate/connector-fixture-linter-skill
Classification: ship

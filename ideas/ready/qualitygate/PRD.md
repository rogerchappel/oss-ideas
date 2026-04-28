# PRD: qualitygate

Status: ready

## Pitch

A tiny repo health gate agents must pass before handoff.

## Why It Matters

High velocity dies if broken builds stack up.

## V1 Scope

- CLI: `qualitygate run`
- Detect package manager and available scripts
- Run safe checks in order if present: lint, typecheck, test, build
- Emit `QUALITY_REPORT.md` and JSON
- Capture command, exit code, duration, summary
- Exit non-zero if required checks fail

## Out of Scope

- No destructive commands
- No auto-fixing
- No CI provider lock-in

## Verification

- Fixture package with pass/fail scripts
- Test JSON report schema

## Agent Prompt

Build `qualitygate`, a local-first CLI that detects common repo scripts and runs a configurable verification gate. It should emit Markdown/JSON reports suitable for PR handoff. Include package-manager detection, config, fixtures, tests, README, and GitHub Actions example.

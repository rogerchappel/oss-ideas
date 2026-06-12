# skillrisk

Status: built

## Summary

Build a reusable agent skill for auditing proposed skill instructions for side effects, missing approvals, vague inputs, and verification gaps.

## Problem

Skill proposals can be useful but unsafe when they omit action boundaries, external-write approvals, or validation expectations. Agents need a repeatable local check before installing or sharing skills.

## Users

- Agents creating reusable skills.
- Maintainers reviewing pending skill proposals.
- Teams that need lightweight governance for agent workflows.

## MVP

- Parse `SKILL.md` text and optional metadata.
- Emit a structured risk report with severity, finding code, evidence, and suggested remediation.
- Include fixture-backed tests for safe, warning, and blocking examples.
- Provide `SKILL.md`, docs, CLI, smoke command, and release-candidate notes.

## Safety

- No automatic modification of live skills.
- No applying, rejecting, quarantining, publishing, or external action.
- Output is advisory and local-first.

## Classification Target

ship

## Build Result

- Repo: https://github.com/rogerchappel/skillrisk
- Release candidate PR: https://github.com/rogerchappel/skillrisk/pull/1
- Branch: release-candidate/skillrisk
- Classification: ship

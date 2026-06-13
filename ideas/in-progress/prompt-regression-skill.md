# Prompt Regression Skill

Status: ready
Type: agent-skill
Owner: Roger
Created: 2026-06-13

## Problem

Prompt changes are often reviewed by eyeballing output. Agent builders need a small local harness that turns expected behaviors, sample outputs, and risk notes into a repeatable regression report before shipping prompt edits.

## MVP

Build a local-first CLI and reusable `SKILL.md` that evaluates prompt regression cases from JSON fixtures and reports:

- passing and failing expectations
- changed output summaries
- missing required phrases
- forbidden phrase violations
- risk notes and recommended review actions

## Constraints

- No model calls in the MVP.
- No external writes or live account actions.
- Keep input and output deterministic.
- Make failure output useful for an agent preparing a PR.

## Success Criteria

- `npm test`, `npm run check`, and `npm run smoke` pass locally.
- The repo includes docs, orchestration notes, fixtures, tests, CLI/API surface, safety notes, and release-candidate notes.
- Another agent can add fixture cases and get a concise regression report.

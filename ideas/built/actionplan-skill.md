# Actionplan Skill

Status: built

## Summary

Build `actionplan-skill`, a dry-run action planning skill that converts a user's requested external action into a structured plan with tools, approvals, reversible steps, blocked conditions, and evidence requirements.

## Problem

Agents need a reusable way to show what they would do before touching external systems. The skill should make side effects explicit, classify approval needs, and produce a clear operator review packet.

## MVP

- `SKILL.md` with trigger guidance, side-effect boundaries, approval model, examples, and validation workflow.
- CLI that reads an action request JSON file and emits a Markdown or JSON dry-run plan.
- Rule-based planner for tool routing, approval tiers, evidence capture, and stop conditions.
- Fixture-backed tests for read-only, write-intent, destructive-intent, and blocked requests.
- README quickstart, examples, limitations, and safety notes.
- `docs/PRD.md`, `docs/TASKS.md`, `docs/ORCHESTRATION.md`, and release-candidate notes.

## Non-goals

- No execution of external actions.
- No credential access.
- No live connector calls in the MVP.

## Verification

- `npm test`
- `npm run check`
- `npm run build`
- `npm run smoke`

## Classification Target

Ship if the dry-run plan is deterministic, auditable, and clearly separates read-only, write, and destructive action classes.

## Build Result

- Repo: https://github.com/rogerchappel/actionplan-skill
- Release candidate PR: https://github.com/rogerchappel/actionplan-skill/pull/1
- Classification: ship
- Built by cron lane: oss-factory-agent-skills on 2026-06-15 Australia/Brisbane

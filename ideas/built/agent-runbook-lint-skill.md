# Agent Runbook Lint Skill

Status: built
Updated: 2026-07-16

## Summary

Build a local-first agent skill that lints Markdown automation runbooks for goals, inputs, verification, rollback, evidence, approval gates, and stop conditions.

## Users

- Agent operators preparing scheduled automation.
- Maintainers reviewing connector or repo-maintenance runbooks.
- Agents delegating work to other sessions.

## MVP

- CLI lints one Markdown runbook.
- Required-topic checks and risky-action approval checks.
- Markdown report with pass/fail score.
- Good and bad fixtures, tests, smoke command, package metadata, and release-candidate notes.

## Safety

Read-only for source runbooks. It never executes commands found in the runbook and writes only an explicit report path.

## Outcome

Built as `rogerchappel/agent-runbook-lint-skill`.


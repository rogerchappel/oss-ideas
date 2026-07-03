# skill-run-audit

Status: built

## Summary
A local-first agent skill and CLI for auditing agent run transcripts for explicit planning, validation evidence, skill context, and external-action approval boundaries.

## Why now
The ready queue was empty during the 2026-07-04 OSS factory run. This idea fits the agent run audit and skill release readiness lane and does not overlap as a thin duplicate with the existing connector or evidence repos.

## MVP scope
- Dependency-free Node CLI and library API.
- JSONL and plain text fixture parsing.
- Deterministic findings for missing plans, validation gaps, missing skill context, and external-action approval boundaries.
- Markdown and JSON reports.
- SKILL.md, PRD, orchestration docs, tasks, release-candidate notes, fixtures, tests, smoke command, and validation script.

## Repository
- Repo: https://github.com/rogerchappel/skill-run-audit
- PR: https://github.com/rogerchappel/skill-run-audit/pull/1

## Classification
ship

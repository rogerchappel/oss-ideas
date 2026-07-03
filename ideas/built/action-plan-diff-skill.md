# action-plan-diff-skill

Status: built

## Summary
A local-first agent skill and CLI for comparing dry-run action plans with execution traces, surfacing unplanned actions, approval drift, dry-run drift, and missing execution evidence.

## Why now
The ready queue was empty during the 2026-07-04 OSS factory run. This idea fits the connector routing and dry-run action-plan lane while staying side-effect free.

## MVP scope
- Dependency-free Node CLI and library API.
- JSONL plan and execution trace parsing.
- Deterministic plan-vs-execution findings.
- Markdown and JSON reports.
- SKILL.md, PRD, orchestration docs, tasks, release-candidate notes, fixtures, tests, smoke command, and validation script.

## Repository
- Repo: https://github.com/rogerchappel/action-plan-diff-skill
- PR: https://github.com/rogerchappel/action-plan-diff-skill/pull/1

## Classification
ship

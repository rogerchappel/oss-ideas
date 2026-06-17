# Repo To Content Skill

Status: in-progress

## Summary

Build a local-first agent skill and CLI that turns a source repository into launch-content briefs: demo commands, README deltas, short post drafts, and verification evidence, all grounded in files already present in the repo.

## Why now

Roger's OSS promotion loop needs repeatable, evidence-backed content generation from real repos without inventing claims or touching social platforms. This project gives agents a reusable workflow for preparing posts, demos, and launch material after a repository is ready.

## MVP

- CLI that scans a repository for package metadata, README, docs, tests, and recent commits.
- Deterministic content brief generator with claims, proof paths, demo commands, and missing-evidence warnings.
- Agent skill instructions for when to use the workflow and where human approval is required.
- Fixture-backed tests using small sample repositories.
- No network posting or live external writes.

## Required project artifacts

- `docs/PRD.md`
- `docs/TASKS.md`
- `docs/ORCHESTRATION.md`
- `SKILL.md`
- README with quickstart, examples, limitations, and safety notes
- CLI smoke script and fixture-backed tests

## Classification target

Ship if the CLI produces a useful launch brief from fixtures and flags unsupported claims.

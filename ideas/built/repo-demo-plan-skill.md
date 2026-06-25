# Repo Demo Plan Skill

Status: built

## Summary

Build a local-first agent skill and CLI that turns a repository plus evidence notes into a short, runnable demo plan with commands, narration beats, risk notes, and verification checkpoints.

## Why now

Roger's OSS promotion loop needs repeatable demo preparation that stays grounded in repository files and local command output. Existing content skills produce briefs and posts; this project focuses on the live or recorded demo script an agent can rehearse before launch.

## Users

- Agents preparing repo demos, video walkthroughs, or launch material
- Maintainers who need concise command sequences with proof paths
- Reviewers who want unsupported demo claims flagged before recording

## MVP

- CLI that inspects package metadata, README, docs, scripts, and optional evidence JSON
- Deterministic demo-plan generator with setup, smoke, feature, failure, and closing beats
- Unsupported-claim and missing-command warnings
- Fixture-backed tests using small sample repositories
- `SKILL.md` explaining when to use the skill, side-effect boundaries, approvals, and verification workflow

## Safety

- Local-only by default
- Does not run commands unless a caller explicitly runs them outside the planner
- Never posts, tags, publishes, or mutates external services
- Flags commands that look destructive or network-writing

## Required project artifacts

- `docs/PRD.md`
- `docs/TASKS.md`
- `docs/ORCHESTRATION.md`
- `SKILL.md`
- README with quickstart, examples, limitations, and safety notes
- CLI smoke script and fixture-backed tests

## Classification Criteria

- `ship`: produces useful fixture-backed demo plans and flags unsupported claims
- `incubate`: plan shape is useful but needs more language/package adapters
- `kill/merge`: duplicates repo-to-content or video prep without a distinct demo-rehearsal workflow

## Build result

- Repo: https://github.com/rogerchappel/repo-demo-plan-skill
- PR: https://github.com/rogerchappel/repo-demo-plan-skill/pull/1
- Classification: ship
- Built: 2026-06-25

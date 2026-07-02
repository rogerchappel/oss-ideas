# specstitch PRD

Status: in-progress
Updated: 2026-07-03
Repo: https://github.com/rogerchappel/specstitch
Release candidate PR: https://github.com/rogerchappel/specstitch/pull/9

Outcome: Added reusable agent SKILL.md packaging, npm tarball inclusion, README skill pointer, and release-candidate notes.

## One-liner
`specstitch` builds a traceability quilt between PRDs, task lists, docs, tests, and source files — then highlights drift before it becomes archaeology. 🪡

## Problem
Small OSS projects often start with a PRD and TASKS file, then code moves faster than docs. Future agents need to know which requirements are covered, untested, obsolete, or undocumented.

## Users
- Local-first OSS maintainers.
- Agentic coding systems that need compact project state.
- Developers preparing a release/readme audit.

## MVP
- Node/TypeScript CLI.
- `specstitch scan` reads `docs/PRD.md`, `docs/TASKS.md`, README, tests, package scripts, and source headings/comments.
- Extract requirement/task bullets and match to files using explicit tags (`REQ-001`) and fuzzy local heuristics.
- Emit `docs/TRACEABILITY.md` and JSON with covered/orphan/stale items.
- `specstitch check` exits non-zero on configurable drift thresholds.
- Fixtures for tagged and untagged repos.

## Non-goals
- LLM-powered semantic matching in V1.
- Replacing project management systems.

## Differentiation
Deterministic, offline, and agent-readable; complements README/test smoke tools rather than duplicating them.

## Sources / attribution
Inspired by StackForge PRD/TASKS workflows and repeated OSS Factory needs for durable requirement-to-code evidence.

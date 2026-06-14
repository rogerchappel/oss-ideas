# Repolens Skill

Status: in-progress

## Summary

Build `repolens-skill`, a repository review briefing skill that scans a local project snapshot and produces an agent-ready review packet with files to inspect, likely risks, test commands, and release-readiness gaps.

## Problem

Before reviewing a repo, agents spend time rediscovering project shape and obvious risk areas. A reusable local-first skill can summarize repository structure and recommend review focus without needing network access or repository writes.

## MVP

- `SKILL.md` with usage triggers, required local inputs, side-effect boundaries, examples, and validation workflow.
- CLI that accepts a fixture or directory snapshot JSON and emits Markdown or JSON.
- Analyzer for package metadata, scripts, docs, tests, CI files, and risk signals.
- Fixture-backed tests for Node package, docs-only repo, and sparse repo snapshots.
- README quickstart, examples, limitations, and safety notes.
- `docs/PRD.md`, `docs/TASKS.md`, `docs/ORCHESTRATION.md`, and release-candidate notes.

## Non-goals

- No code modification or automatic PR comments.
- No network calls or dependency installation.
- No security scanner claims beyond heuristic review prompts.

## Verification

- `npm test`
- `npm run check`
- `npm run build`
- `npm run smoke`

## Classification Target

Ship if fixture reviews are stable, useful, and honest about heuristic limitations.

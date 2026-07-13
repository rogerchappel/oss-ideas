# PRD: repo-fixture-refresh-skill

Status: ready
Decision: build now
Created: 2026-07-14
Source: OSS Factory agent-skill queue replenishment.

## Pitch

`repo-fixture-refresh-skill` helps agents detect stale fixtures after repository behavior changes and draft a safe refresh plan.

## Problem

Fixture-backed CLI repos drift when code changes but expected outputs, docs snippets, and smoke examples are not refreshed. Agents need a deterministic way to identify stale fixture files, show diffs, and separate safe refreshes from changes that need maintainer review.

## V1 Scope

- Local TypeScript CLI.
- Scan fixtures, docs snippets, smoke outputs, and package scripts.
- Compare recorded outputs against newly supplied command logs or generated reports.
- Emit refresh plans with changed files, risk notes, and review checklist.
- Include fixture-backed tests for unchanged, safe-update, and risky-update cases.
- Include `SKILL.md` with approval boundaries for rewriting fixtures.

## Non-Goals

- Automatically running arbitrary project commands.
- Rewriting fixtures without explicit `--apply`.
- Uploading fixture contents.

## CLI Sketch

```bash
repo-fixture-refresh plan --repo . --log fixtures/latest-smoke.log --out .tmp/fixture-refresh.md
repo-fixture-refresh apply .tmp/fixture-refresh.json --approve safe-only
```

## Verification

- `npm run check`
- `npm test`
- `npm run smoke`
- CLI fixture plan smoke

## Agent Prompt

Build `repo-fixture-refresh-skill` as a local-first planner for stale fixture refreshes in agent-maintained repos. Keep V1 deterministic, fixture-backed, and conservative about writes.

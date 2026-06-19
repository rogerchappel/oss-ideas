# ToolTrace Skill PRD

Status: in-progress

## Summary

`tooltrace-skill` is a local-first agent skill and CLI that converts tool-call activity logs into reviewable proof summaries. It helps agents explain what tools were used, which files or commands were touched, where approval was needed, and what evidence should be checked before trust is granted.

## Source attribution

Created during the OSS Factory Agent Skills cron run on 2026-06-19 because `ideas/ready` was empty and `ideas/backlog` was absent. It is derived from the existing in-progress `tooltrace` PRD and recurring proof-of-work needs in agent apps. No external code or private data is used.

## Target users

- Agent app builders who need readable tool-use proof.
- Maintainers reviewing agent-generated pull requests.
- Operators supervising connector/tool workflows with dry-run boundaries.

## Problem

Raw tool-call logs hide the important review questions: what happened, what changed, what failed, what required approval, and whether evidence is complete. Agents need a portable skill to summarize activity without leaking private transcript data.

## V1 Goals

- Parse JSONL tool events from local fixtures or run logs.
- Normalize commands, tool calls, file changes, approvals, errors, and completion proof.
- Emit Markdown and JSON summaries with risk levels.
- Provide a reusable `SKILL.md` with approval rules and validation workflow.
- Include fixtures, tests, smoke command, and release-candidate docs.

## Non-goals

- Building a hosted trace viewer.
- Making autonomous approval decisions.
- Scraping arbitrary private logs or using telemetry.

## V1 CLI

```bash
tooltrace-skill summarize examples/tool-events.jsonl --out TOOLTRACE.md
tooltrace-skill check examples/tool-events.jsonl --fail-on approval
```

## Acceptance criteria

- `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and `bash scripts/validate.sh` pass.
- README covers quickstart, examples, safety notes, limitations, and JSONL schema.
- Public repo exists under `rogerchappel/tooltrace-skill`.
- Release-candidate PR exists with verification results.


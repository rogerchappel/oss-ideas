# Agent Context Pruner Skill

Status: built

## Summary

Build a local-first agent skill that turns long agent transcripts into compact continuation briefs with preserved decisions, artifacts, next actions, verification items, and redacted sensitive content.

## Problem

Long-running agent jobs often lose useful context during compaction or handoff. Roger needs a reusable skill that can preserve what matters without copying verbose tool output or secrets into a new prompt.

## Users

- Agents resuming long cron jobs
- Maintainers handing work between agent sessions
- Reviewers auditing what context survived a run

## MVP

- `SKILL.md` describing use cases, required inputs, side-effect boundaries, approvals, examples, and verification
- CLI that accepts markdown, JSON, or JSONL transcript logs
- Library API that classifies keep, verify, redact, and drop items
- Markdown and JSON reports
- Fixture-backed tests
- Smoke command for a sample transcript
- Release-candidate docs and orchestration notes

## Inputs

- Agent transcript markdown, JSON message arrays, or JSONL logs
- Optional item limit and output format

## Outputs

- Continuation brief with keep, verify, and redact sections
- Classified item report with reasons and redacted summaries

## Safety

The skill is local-first and must not call external APIs or modify external systems. Redaction is heuristic and any continuation prompt should still be reviewed before sharing.

## Verification

- `npm test`
- `npm run check`
- `npm run build`
- `npm run smoke`
- `bash scripts/validate.sh`

## Classification

Built repository: https://github.com/rogerchappel/agent-context-pruner-skill
Release-candidate branch: release-candidate/agent-context-pruner-skill
Classification: ship

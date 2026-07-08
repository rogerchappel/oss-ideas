# release-note-weaver-skill

Status: in-progress
Lane: agent-skill
Created: 2026-07-08
Source: cron queue replenishment after `ideas/ready` contained only README and no backlog directory existed.

## Problem

Agents often finish useful repo work but leave scattered proof: task docs, smoke logs, git commits, and PR notes. Maintainers need a repeatable way to weave local evidence into concise release-candidate notes without inventing claims or touching external services.

## Users

- Agent builders preparing release-candidate PRs.
- Maintainers reviewing OSS factory output.
- Content agents creating launch-safe summaries from verified local evidence.

## MVP

- Local-first CLI that reads `docs/TASKS.md`, optional verification logs, and git history.
- Generates a Markdown release-candidate note with changes, verification, limitations, and next steps.
- Requires evidence for every claim and flags missing proof.
- Fixture-backed tests and a smoke command.

## Safety

- Read-only by default.
- No publishing, tagging, GitHub writes, or live-account actions.
- Output must separate observed evidence from recommended follow-up.

## Classification Target

Ship if another agent can use it to create accurate PR bodies and release notes from local repo evidence.

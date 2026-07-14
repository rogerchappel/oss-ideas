# PRD: skill-ci-evidence-skill

Status: built
Decision: built release candidate
Created: 2026-07-14
Source: OSS Factory agent-skill queue replenishment.

## Pitch

`skill-ci-evidence-skill` collects the minimum CI and local verification evidence needed to review an agent-skill release candidate.

## Problem

Agent-skill repos often include docs, fixtures, package metadata, and smoke scripts, but PR summaries can omit exactly which checks ran and which artifacts were packaged. Reviewers need a compact local evidence bundle that is easy to paste into release-candidate PRs.

## V1 Scope

- Local CLI that reads package metadata, scripts, test logs, and `npm pack --dry-run` output.
- Produce JSON and Markdown release evidence.
- Flag missing `SKILL.md`, docs, fixtures, smoke commands, package allowlist entries, and verification notes.
- Include fixture repos for passing, warning, and failing skill packages.
- Include `SKILL.md` for agents preparing release-candidate PRs.

## Non-Goals

- Calling GitHub APIs.
- Running CI jobs.
- Publishing packages or tagging releases.

## CLI Sketch

```bash
skill-ci-evidence collect --repo . --log fixtures/release-check.log --out .tmp/evidence.md --json .tmp/evidence.json
skill-ci-evidence check .tmp/evidence.json
```

## Verification

- `npm run check`
- `npm test`
- `npm run smoke`
- fixture smoke against bundled sample repos

## Agent Prompt

Build `skill-ci-evidence-skill` as a local-first evidence collector for agent-skill release candidates. It should make release PR verification concrete without publishing, tagging, or contacting external services.

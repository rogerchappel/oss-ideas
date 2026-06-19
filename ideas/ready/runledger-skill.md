# RunLedger Skill PRD

Status: ready

## Summary

`runledger-skill` is a local-first agent skill and CLI that turns command-run ledgers into concise verification handoffs. It helps agents prove what they ran, which checks passed or failed, what evidence is shareable, and what follow-up is still needed.

## Source attribution

Created during the OSS Factory Agent Skills cron run on 2026-06-19 because `ideas/ready` was empty and `ideas/backlog` was absent. It is derived from the existing in-progress `runledger` PRD and recurring agent release-readiness needs. No external code or private data is used.

## Target users

- Agent builders preparing release-candidate evidence.
- Maintainers reviewing local verification claims.
- Operators who need a deterministic dry-run handoff before external action.

## Problem

Agents often say "tests passed" without presenting a compact, inspectable ledger of command, status, elapsed time, output references, and unresolved risk. Raw logs are too noisy for handoff and PR review.

## V1 Goals

- Parse local JSONL command-run ledgers.
- Emit Markdown and JSON verification summaries.
- Flag failures, missing commands, secret-like output, and stale evidence.
- Provide a reusable `SKILL.md` with side-effect boundaries and verification workflow.
- Include fixtures, tests, smoke command, and release-candidate docs.

## Non-goals

- Executing commands on behalf of the user.
- Uploading evidence or contacting external services.
- Replacing CI, code review, or human release approval.

## V1 CLI

```bash
runledger-skill summarize examples/runs.jsonl --out REPORT.md
runledger-skill check examples/runs.jsonl --require "npm test" --fail-on warning
```

## Acceptance criteria

- `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and `bash scripts/validate.sh` pass.
- README covers quickstart, examples, safety notes, limitations, and JSONL schema.
- Public repo exists under `rogerchappel/runledger-skill`.
- Release-candidate PR exists with verification results.


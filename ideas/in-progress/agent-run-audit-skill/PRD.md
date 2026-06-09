# PRD: agent-run-audit-skill

Status: ready
Decision: build now

## Scorecard

Total: 86/100
Band: build now
Last scored: 2026-06-09
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agent runs can drift, skip checks, or hide risky side effects without a compact audit artifact. |
| Demand signal | 16/20 | Roger's cron and OSS factory workflows need repeatable summaries of what agents did and verified. |
| V1 buildability | 19/20 | A useful local parser can audit Markdown, JSONL, and plain-text run logs with fixtures. |
| Differentiation | 13/15 | Focused on agent safety, evidence, and release readiness rather than generic log summarization. |
| Agentic leverage | 15/15 | Gives agents a reusable self-review and handoff skill after long automation runs. |
| Distribution potential | 5/10 | Niche but credible for agent builders, release managers, and prompt regression workflows. |

## Pitch

Create a local-first CLI and skill that turns agent transcripts, cron summaries, and tool logs into an audit report: actions taken, files touched, commands run, verification evidence, unresolved blockers, and follow-up recommendations.

## Why It Matters

Agent workflows increasingly produce large transcripts that are hard to review. Maintainers need a concise artifact that separates completed work from claimed work, records verification commands, and highlights risky or missing approvals.

## V1 Scope

- Accept Markdown, plain text, or JSONL transcript/log files.
- Extract commands, file paths, URLs, TODOs, blockers, and verification statements.
- Classify side effects as filesystem, network, GitHub, package, or external-account related.
- Produce `audit.json` and `audit.md`.
- Include fixture-backed tests and a smoke command.
- Provide `SKILL.md` instructions for agent self-audits and handoffs.

## Out of Scope

- Reading private SaaS logs.
- Sending notifications.
- Scoring humans or employee productivity.
- Executing commands found in logs.
- Mutating repositories under audit.

## CLI Sketch

```bash
agent-run-audit audit ./transcript.md --out .audit
agent-run-audit summarize .audit/audit.json
agent-run-audit check .audit/audit.json
```

## Verification

- Fixtures for successful build runs, blocked runs, and risky external-action requests.
- Tests for command/path extraction and side-effect classification.
- Smoke command that audits a fixture transcript and validates the output files.

## Agent Prompt

Build `agent-run-audit-skill` as a local-first CLI and reusable skill for auditing agent transcripts. It should produce compact, evidence-oriented reports without executing transcript commands or touching external services.

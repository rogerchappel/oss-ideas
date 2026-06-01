# PRD: agent-run-auditor

Status: ready
Decision: ready

## Scorecard

Total: 85/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agent runs need post-hoc review for claims, actions, and failures. |
| Demand signal | 16/20 | Agent observability and auditability are high-value needs. |
| V1 buildability | 18/20 | Can analyze local transcripts/logs. |
| Differentiation | 13/15 | Focus on actionable audit notes for agent workflows. |
| Agentic workflow leverage | 14/15 | Improves reliability and governance. |
| Distribution potential | 6/10 | Good AI ops utility. |

## Pitch

Audit an agent run transcript for side effects, unsupported claims, missing verification, and follow-up actions.

## Why It Matters

High-volume agent work needs review loops. This tool turns logs into concrete quality signals.

## V1 Scope

- Parse Markdown/JSONL transcripts.
- Identify tool calls, external actions, failures, and claims.
- Flag missing verification and risky side effects.
- Emit audit report and follow-up task list.

## Out of Scope

- Live session monitoring.
- Provider-specific tracing APIs.

## CLI/API Sketch

```bash
agent-run-auditor run transcript.jsonl --out audit.md
```

## Verification

- Fixture transcripts with known issues.
- Tests for side-effect and missing-verification detection.

## Agent Prompt

Build `agent-run-auditor` as a local transcript audit CLI for agent workflow quality.

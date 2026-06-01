# PRD: meeting-brief

Status: ready
Decision: ready

## Scorecard

Total: 76/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Meeting prep is repetitive and high leverage. |
| Demand signal | 15/20 | Common executive and sales workflow. |
| V1 buildability | 17/20 | Local notes and agenda generation are straightforward. |
| Differentiation | 11/15 | Evidence-backed brief from local notes and source pack. |
| Agentic workflow leverage | 12/15 | Strong agent workflow primitive. |
| Distribution potential | 5/10 | Practical but common. |

## Pitch

Generate a concise meeting brief from notes, prior context, and source documents, with follow-up tasks ready for review.

## Why It Matters

Agents can save real time if meeting prep is specific, short, and grounded.

## V1 Scope

- Input folder of notes/source docs.
- Output agenda, context summary, likely goals, questions, risks, and follow-up task plan.
- Redact private sections when requested.

## Out of Scope

- Calendar integration.
- Sending invites or follow-ups.

## CLI/API Sketch

```bash
meeting-brief notes/acme/ --out brief.md
```

## Verification

- Fixture meeting packs.
- Tests for required brief sections and redaction.

## Agent Prompt

Build `meeting-brief` as a local source-grounded meeting prep skill.

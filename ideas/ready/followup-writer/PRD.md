# PRD: followup-writer

Status: ready
Decision: ready

## Scorecard

Total: 74/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 15/20 | Follow-ups are easy to delay and hard to keep specific. |
| Demand signal | 15/20 | Sales, fundraising, hiring, and partnerships all need this. |
| V1 buildability | 17/20 | Draft generation from local notes is feasible. |
| Differentiation | 10/15 | Draft-only, action-safe, evidence-backed. |
| Agentic workflow leverage | 12/15 | Useful connector companion. |
| Distribution potential | 5/10 | Broad but crowded. |

## Pitch

Create review-only follow-up drafts and task plans from meeting notes.

## Why It Matters

The useful agent behavior is drafting and organizing, not silently sending messages.

## V1 Scope

- Generate follow-up email/message drafts from notes.
- Extract promised actions and owners.
- Produce CRM/task dry-run plan.
- Include "needs human review" markers.

## Out of Scope

- Sending messages.
- Live inbox access.

## CLI/API Sketch

```bash
followup-writer meeting-notes.md --out followups/
```

## Verification

- Fixture notes with expected tasks and drafts.
- Tests that no send action is implied.

## Agent Prompt

Build `followup-writer` as a review-only follow-up drafting and task extraction skill.

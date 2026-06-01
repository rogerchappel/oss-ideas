# PRD: investor-crm

Status: ready
Decision: ready

## Scorecard

Total: 79/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Fundraising follow-up and context tracking become messy quickly. |
| Demand signal | 14/20 | Founder workflows have clear need, though audience is narrower. |
| V1 buildability | 17/20 | Local markdown/CSV CRM and reminders are feasible. |
| Differentiation | 12/15 | Founder-first investor pipeline without SaaS lock-in. |
| Agentic workflow leverage | 13/15 | Agents can prep meetings and follow-ups from local state. |
| Distribution potential | 6/10 | Good founder utility. |

## Pitch

A local-first investor pipeline skill for meeting prep, follow-ups, and relationship notes.

## Why It Matters

Fundraising is high-context. Agents can help only if the pipeline state is structured, auditable, and private by default.

## V1 Scope

- Local CSV/Markdown investor records.
- Meeting prep brief generation.
- Follow-up draft generation.
- Reminder/action queue export.
- Redaction-safe public/private fields.

## Out of Scope

- Sending emails.
- Live calendar or CRM sync.

## CLI/API Sketch

```bash
investor-crm brief investors.csv --for "Acme Ventures"
investor-crm followup notes/acme.md --out drafts/
```

## Verification

- Fixture pipeline with expected briefs.
- Tests for private-field redaction.

## Agent Prompt

Build `investor-crm` as a private local-first fundraising CRM skill for agent meeting prep and follow-up drafting.

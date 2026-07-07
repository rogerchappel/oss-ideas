# PRD: agent-decision-log-skill

Status: in-progress
Source: created by OSS Factory Agent Skills queue replenishment on 2026-07-08
Owner: Neo

## Scorecard

Total: 86/100
Band: build now

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agent runs often make choices that are hard to audit later. |
| Demand signal | 17/20 | Roger's workflows repeatedly need run audits, handoffs, release readiness, and claim evidence. |
| V1 buildability | 18/20 | A local parser, validator, and Markdown/JSON renderer can be built with fixtures. |
| Differentiation | 12/15 | Focuses on decision records for agent runs rather than generic ADRs. |
| Agentic workflow leverage | 15/15 | Improves handoffs, reviews, and post-run accountability. |
| Distribution potential | 6/10 | Useful to agent builders and teams adopting autonomous coding workflows. |

## Pitch

A local-first agent skill and CLI that turns run notes into compact decision records with evidence links, tradeoffs, risk flags, and follow-up owners.

## V1 Scope

- CLI commands to create, validate, and render decision logs from JSON fixtures.
- Schema checks for decision, context, options, chosen path, evidence, risk, and follow-up fields.
- Markdown and JSON output suitable for PR comments or handoff docs.
- Safety checks that flag missing evidence, private-looking tokens, and external side effects.
- `SKILL.md` with usage boundaries and verification workflow.

## Out of Scope

- Live workspace scraping.
- Automatic source-code interpretation.
- External ticket, CRM, or messaging writes.
- Claims that evidence proves correctness.

## Verification

- Unit tests for validation, redaction flags, and rendering.
- CLI smoke against local fixtures.
- README quickstart and release-candidate notes.


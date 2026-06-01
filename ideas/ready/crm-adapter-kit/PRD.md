# PRD: crm-adapter-kit

Status: ready
Decision: build now

## Scorecard

Total: 86/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | CRM connectors need consistent primitives and safety boundaries. |
| Demand signal | 17/20 | Sales and investor workflows frequently involve CRM notes, tasks, and contact research. |
| V1 buildability | 17/20 | Can start with adapter interfaces and mock connectors. |
| Differentiation | 13/15 | Agent-first CRM primitives instead of provider-specific scripts. |
| Agentic workflow leverage | 14/15 | Useful for sales, investors, partnerships, and support workflows. |
| Distribution potential | 7/10 | Strong business-agent utility. |

## Pitch

A provider-neutral CRM adapter contract for agents: contacts, accounts, deals, notes, tasks, and dry-run writes.

## Why It Matters

Agents should not have one-off CRM scripts. They need reusable primitives that can be backed by HubSpot, Attio, Pipedrive, Airtable, or Sheets later.

## V1 Scope

- TypeScript adapter interface.
- Local mock adapter.
- Action plan schema for CRM writes.
- CLI for contact/account/deal lookup against fixtures.
- Dry-run note/task creation.

## Out of Scope

- Live provider API integrations in V1.
- Secret storage.

## CLI/API Sketch

```bash
crm-adapter-kit list-contacts --adapter fixtures/crm.json
crm-adapter-kit plan-task --contact "Ada Lovelace" --follow-up "Send deck"
```

## Verification

- Fixture adapter tests.
- Contract tests for required methods and dry-run plans.

## Agent Prompt

Build `crm-adapter-kit` as a provider-neutral CRM primitive layer for safe agent workflows.

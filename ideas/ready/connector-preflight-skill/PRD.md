# PRD: connector-preflight-skill

Status: ready
Source: created by OSS Factory Agent Skills queue replenishment on 2026-07-08
Owner: Neo

## Scorecard

Total: 87/100
Band: build now

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 19/20 | Agents need a repeatable preflight before using connectors with side effects. |
| Demand signal | 18/20 | Connector routing, dry-run action plans, and approval boundaries are core lane themes. |
| V1 buildability | 18/20 | Local manifests and action requests can be evaluated without credentials. |
| Differentiation | 12/15 | Emphasizes readiness gates and missing approvals before execution. |
| Agentic workflow leverage | 15/15 | Gives agents a yes/no/needs-approval checkpoint before tool use. |
| Distribution potential | 5/10 | Strong for agent builders, narrower for general CLI audiences. |

## Pitch

A local-first skill and CLI that evaluates connector manifests plus intended actions and emits a preflight verdict with missing scopes, approval gates, side effects, and dry-run notes.

## V1 Scope

- CLI commands to inspect manifests, check an action request, and render a preflight report.
- Local JSON manifests for connectors, scopes, capabilities, side effects, and approval requirements.
- Deterministic verdicts: pass, needs-approval, missing-scope, blocked.
- Markdown and JSON output for agent handoffs.
- `SKILL.md` that defines when agents should run preflight and when they must stop.

## Out of Scope

- Live connector execution.
- Credential storage or OAuth flows.
- Hosted policy service.
- Automatic approval.

## Verification

- Unit tests for scope checks, approval checks, blocked actions, and report rendering.
- CLI smoke with fixture manifests and action requests.
- README quickstart and release-candidate notes.


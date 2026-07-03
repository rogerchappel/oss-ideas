# PRD: connector-mock-plan-skill

Status: in-progress
Decision: in-progress

## Scorecard

Total: 81/100
Band: build now
Last scored: 2026-07-04
Scored by: oss-factory-agent-skills

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Connector adapters are hard to test without live accounts. |
| Demand signal | 15/20 | Repeated in connector routing, dry-run, and fixture-pack workflows. |
| V1 buildability | 20/20 | Local manifest parser can emit mock scenarios and assertions. |
| Differentiation | 12/15 | Plans mocks from connector capabilities instead of hand-writing stubs. |
| Agentic workflow leverage | 13/15 | Makes adapter work safer before touching real accounts. |
| Distribution potential | 5/10 | Useful to connector and MCP developers. |

## Pitch

Convert connector capability manifests into local mock test plans with fixtures, assertions, and dry-run boundaries.

## Why It Matters

Agents need to rehearse connector behavior before using real accounts. This skill produces a mock plan from a manifest so a developer can see required fixtures, success cases, refusal cases, and approval gates.

## Qualification

### Pub Test

Can this be explained clearly in one sentence? Yes: it turns connector capabilities into a local mock test plan.

### Competitors / Adjacent Tools

- API mocking frameworks — powerful, but require a hand-authored test plan.
- Connector fixture packs — provide examples, but do not derive plan coverage from a manifest.

### Star / Demand Signal

- Ongoing connector route, permission diff, and fixture linter projects need richer mock planning.
- Public MCP and connector tooling increasingly values local dry runs.

### Real Problem

- Connector authors need to know what to mock before running live actions.
- Agents need a stable plan for success, refusal, rate-limit, permission, and empty-result paths.

### V1 Buildability

- Parse local JSON/YAML manifests.
- Generate scenario matrix, fixture checklist, and dry-run notes.
- Verify output against fixtures.

## V1 Scope

- Local-first CLI.
- Capability manifest parser.
- Scenario matrix generator.
- Markdown and JSON output.
- `SKILL.md` with mock planning workflow.

## Out of Scope

- Running real connectors.
- Network mocking server.
- Live account setup.

## CLI/API Sketch

```bash
connector-mock-plan fixtures/slack-manifest.json
connector-mock-plan fixtures/crm-manifest.yml --format json
```

## Verification

- `npm test`
- `npm run check`
- `npm run smoke`

## Agent Prompt

Build `connector-mock-plan-skill` as a local-first CLI and reusable agent skill for planning connector mocks from capability manifests.

# Connector Route Replay Skill

Status: built
Decision: build
Updated: 2026-07-01

Built Repo: https://github.com/rogerchappel/connector-route-replay-skill
Release Candidate PR: https://github.com/rogerchappel/connector-route-replay-skill/pull/1

## Pitch

A deterministic agent skill that replays recorded connector-routing decisions from local fixtures and explains why each tool, approval gate, or dry-run path was selected.

## Why It Matters

Connector routing and dry-run action planning are core to Roger's agent workflows. Existing repos cover pieces of this space, but a small replay skill would give agents a safe way to test routing logic, approval boundaries, and user-facing explanations without touching live external systems.

## Attribution

Inspired by Roger's existing connector/action infrastructure work including `connector-router`, `connector-dryrun-kit`, `connector-rehearsal-skill`, `action-approval-skill`, and `toolhutch`. This PRD scopes a fixture-first replay layer rather than duplicating those projects.

## Users

- Agents validating connector decisions before enabling tools.
- Maintainers reviewing approval-policy changes.
- Demo builders preparing safe tool-routing examples.

## V1 Scope

- Parse local JSON/YAML route fixtures containing request, candidate tools, policy hints, expected selected route, and expected approval gate.
- Replay deterministic route scoring with explicit evidence fields.
- Emit Markdown and JSON reports showing selected route, rejected routes, required approvals, and dry-run-only actions.
- Provide a `SKILL.md` workflow for agents that need to validate connector behavior locally.
- Include fixture-backed tests for safe read-only, write-action, ambiguous, and blocked routes.

## Out of Scope

- Live connector calls.
- Credential reads, account writes, or external posting.
- Replacing existing connector routers or policy engines.

## CLI Sketch

```sh
connector-route-replay replay fixtures/read-only-route.json --format markdown
connector-route-replay replay fixtures/write-action-route.yaml --format json
connector-route-replay verify fixtures --policy examples/policy.json
```

## Skill Requirements

- Explain when agents should use replay before connector execution.
- Document required fixture fields and approval boundaries.
- Keep all default commands local-first and read-only.

## Verification

- Unit tests for fixture parsing, route scoring, approval classification, and report rendering.
- CLI smoke over bundled fixtures.
- `npm run check`, `npm test`, `npm run smoke`, and package dry-run.

## Classification

ship candidate

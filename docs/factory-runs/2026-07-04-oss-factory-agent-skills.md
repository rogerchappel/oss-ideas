# 2026-07-04 OSS Factory Agent Skills

## Queue Hygiene

`ideas/ready` and `ideas/in-progress` were empty, and `ideas/backlog` did not exist. The run replenished the queue with three new ready agent-skill PRDs, selected them, and moved them through `in-progress` to `built`.

## Selected

- `skill-example-miner-skill`: mines completed agent run notes into safe reusable skill examples.
- `agent-safety-case-skill`: drafts compact safety cases before agent side effects.
- `connector-mock-plan-skill`: turns connector capability manifests into local mock plans.

## Release Candidate PRs

- https://github.com/rogerchappel/skill-example-miner-skill/pull/1
- https://github.com/rogerchappel/agent-safety-case-skill/pull/1
- https://github.com/rogerchappel/connector-mock-plan-skill/pull/1

## Verification

All repos passed:

- `npm test`
- `npm run check`
- `npm run smoke`

## Classification

- `skill-example-miner-skill`: ship
- `agent-safety-case-skill`: ship
- `connector-mock-plan-skill`: incubate

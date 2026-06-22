# PRD: skillfixture-hub

Status: built
Decision: ship
Created: 2026-06-22

## Pitch

`skillfixture-hub` generates and validates activation fixtures for portable agent skills so teams can regression-test when a skill should and should not fire.

## Why It Matters

Reusable agent skills drift when activation language changes without examples. Roger's existing skill repos already rely on fixture-backed checks, but each project invents its own small format. A tiny local-first fixture generator and validator would make skill packaging runs more consistent.

## Source / Attribution

Inspired by Roger's OpenClaw skill workflow, `skillforge` activation fixtures, and the broader public move toward reusable coding-agent skills. This PRD proposes a deterministic companion tool; it must not copy private skill content.

## V1 Scope

- TypeScript CLI with `init`, `validate`, `render`, and `summarize`.
- Canonical JSON fixture schema with prompt, expected activation, reason, tags, and safety notes.
- Generate starter positive, negative, and anti-example fixtures from a `SKILL.md` and optional `skill.yaml`.
- Validate fixture shape and flag missing negative examples or unsafe activation ambiguity.
- Render Markdown review tables for pull requests.
- Include fixture-backed tests and smoke commands.

## Out of Scope

- Calling LLM APIs.
- Installing skills into live hosts.
- Owning a hosted registry.

## CLI Sketch

```bash
skillfixture-hub init ./my-skill --out fixtures/activation.json
skillfixture-hub validate fixtures/activation.json
skillfixture-hub summarize fixtures/activation.json --format markdown
```

## Required Deliverables

- `docs/PRD.md`, `docs/TASKS.md`, and `docs/ORCHESTRATION.md`.
- `SKILL.md` describing when agents should use the tool.
- Local CLI/library API, tests, fixtures, smoke script, package metadata, README, and release-candidate notes.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, `bash scripts/validate.sh`, and a CLI fixture smoke.

## Agent Prompt

Build `skillfixture-hub` as a local-first activation fixture toolkit for portable agent skills. Keep outputs deterministic, reviewable, and safe for public repos.

## Build Result

- Repo: https://github.com/rogerchappel/skillfixture-hub
- Release-candidate PR: https://github.com/rogerchappel/skillfixture-hub/pull/1
- Classification: ship

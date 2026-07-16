# PRD: skill-evidence-trail

Status: in-progress
Decision: build now
Updated: 2026-07-16
Source: oss-factory-agent-skills queue replenishment after ready queue shortage.
Repo: https://github.com/rogerchappel/skill-evidence-trail
Release candidate PR: https://github.com/rogerchappel/skill-evidence-trail/pull/1
Outcome: Built public local-first CLI/library with docs, SKILL.md, fixtures,
tests, smoke command, branch protection, and release-candidate evidence.
Classification: ship

## Pitch

`skill-evidence-trail` turns an agent skill run into a compact evidence packet:
inputs, claimed checks, artifacts, command results, risks, and a final readiness
verdict.

## Why It Matters

Agent skills often produce useful work but leave reviewers guessing which facts
were verified and which artifacts support the outcome. A deterministic evidence
trail gives release PRs and handoffs a repeatable checklist without needing a
host-specific agent runtime.

## V1 Scope

- Local-first CLI and library API.
- Accept JSON run events plus optional artifact manifest files.
- Normalize commands, artifacts, claims, risks, and verification outcomes.
- Emit Markdown and JSON packets suitable for PR bodies or run dossiers.
- Include fixture-backed tests, `SKILL.md`, smoke command, safety notes, and
  release-candidate notes.

## Out of Scope

- Reading private agent memory or connector stores.
- Uploading evidence to external systems.
- Making pass/fail decisions without explicit local evidence.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and
`bash scripts/validate.sh`. All passed in the initial public build.

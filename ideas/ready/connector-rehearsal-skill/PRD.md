# PRD: connector-rehearsal-skill

Status: ready
Decision: build next
Created: 2026-06-22

## Pitch

`connector-rehearsal-skill` turns a planned connector action into a local dry-run checklist, approval packet, and rollback note before any external write occurs.

## Why It Matters

Agents increasingly route work through Slack, CRMs, GitHub, project managers, calendars, and custom connectors. Roger's workflows need a repeatable way to preview side effects, confirm approvals, and preserve evidence without touching live accounts.

## Source / Attribution

Inspired by Roger's connector routing, dry-run, meeting follow-up, and CRM adapter skill lanes. It should use only local fixtures and sample connector manifests, with no live external account writes in V1.

## V1 Scope

- TypeScript CLI with `plan`, `rehearse`, `diff`, and `render-approval`.
- Read local connector action manifests in JSON or YAML.
- Normalize target, payload, approval requirement, risk level, rollback note, and evidence fields.
- Emit Markdown approval packets and JSON rehearsal artifacts.
- Detect missing approval boundaries, absent rollback notes, broad target selectors, and secrets-looking payload fields.
- Include sample connector fixtures for Slack-like, CRM-like, and GitHub-like actions.

## Out of Scope

- Performing live connector writes.
- Storing credentials.
- Replacing connector SDKs or policy engines.

## CLI Sketch

```bash
connector-rehearsal plan fixtures/slack-action.json --out tmp/rehearsal
connector-rehearsal rehearse fixtures/crm-update.yaml --format markdown
connector-rehearsal diff before.json after.json
```

## Required Deliverables

- `docs/PRD.md`, `docs/TASKS.md`, and `docs/ORCHESTRATION.md`.
- `SKILL.md` with side-effect boundaries and approval requirements.
- Local CLI/library API, tests, fixtures, smoke script, package metadata, README, and release-candidate notes.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, `bash scripts/validate.sh`, and a CLI fixture smoke.

## Agent Prompt

Build `connector-rehearsal-skill` as a local-first dry-run planner for connector actions. It must never call external services in V1; all outputs are review artifacts for human approval.

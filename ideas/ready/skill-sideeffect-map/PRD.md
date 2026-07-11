# PRD: skill-sideeffect-map

Status: ready
Decision: build now
Updated: 2026-07-11

## Pitch

`skill-sideeffect-map` scans agent skill documentation and produces a local approval map: what tools are implied, what external side effects are possible, and which steps should be dry-run or approval-gated.

## Why It Matters

Agent skills are often copied between hosts without a shared safety review. A deterministic scanner gives maintainers a quick evidence pack before enabling a skill in a personal or team workspace.

## V1 Scope

- CLI: `skill-sideeffect-map scan <path>`, `skill-sideeffect-map check <path>`, and `skill-sideeffect-map render <path>`.
- Parse `SKILL.md`, Markdown docs, and optional JSON manifests.
- Classify side effects: filesystem write, shell execution, network fetch, browser automation, messaging, media generation, repository actions, scheduled jobs, and credentialed connectors.
- Emit JSON and Markdown reports with evidence lines, approval notes, and dry-run recommendations.
- Include fixture-backed tests and a smoke script.
- Stay local-first with no network calls in default commands.

## Out of Scope

- Runtime enforcement.
- Secret scanning beyond keyword-based warnings.
- Host-specific installation.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, `bash scripts/validate.sh`, and a CLI fixture scan.


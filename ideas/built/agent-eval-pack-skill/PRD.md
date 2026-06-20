# PRD: agent-eval-pack-skill

Status: built
Decision: ship
Created: 2026-06-20
Updated: 2026-06-20
Repo: https://github.com/rogerchappel/agent-eval-pack-skill
Release candidate PR: https://github.com/rogerchappel/agent-eval-pack-skill/pull/1

Outcome: Built a local-first Node CLI that converts structured Markdown agent run notes into JSON eval packs and Markdown review briefs with redaction, validation, fixtures, and reusable skill instructions.

Verification: `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and `bash scripts/validate.sh` passed on 2026-06-20 after fixing final-section Markdown parsing.

## One-liner

`agent-eval-pack-skill` turns agent run notes, transcripts, and command/result evidence into small regression eval packs for future agent prompt or skill changes.

## Problem

Teams improve agent prompts by memory and vibes unless they preserve representative failures and wins as reusable eval cases. A local-first packager should extract scenario, inputs, expected behavior, forbidden behavior, evidence, and scoring rubric from plain-text run artifacts without touching private services.

## Users

- Agent engineers maintaining prompt regressions
- Skill authors who want examples that double as evals
- Maintainers auditing agent runs before changing instructions

## V1 Scope

- CLI: `agent-eval-pack init`, `agent-eval-pack build <input>`, and `agent-eval-pack validate <pack>`.
- Parse Markdown transcripts or run notes with fenced command blocks and result sections.
- Emit JSON eval cases plus a Markdown reviewer brief.
- Redact common secrets and file-system home paths by default.
- Include fixtures for successful run, failed run, and mixed evidence.
- Provide a `SKILL.md` for agents creating eval packs from local artifacts.

## Out of Scope

- Running model evals.
- Uploading artifacts.
- Reading live chat histories or external accounts.

## CLI Sketch

```bash
agent-eval-pack build ./fixtures/run-note.md --out dist/eval-pack
agent-eval-pack validate dist/eval-pack/evals.json
```

## Verification

- Unit tests for extraction, redaction, validation, and rendering.
- CLI smoke commands over fixtures.
- Docs with side-effect boundaries, limitations, and reviewer workflow.

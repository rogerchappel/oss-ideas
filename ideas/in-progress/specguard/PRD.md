# SpecGuard PRD

Status: in-progress
Decision: build now
Factory run: 2026-05-18 PM

## One-liner

`specguard` checks that PRDs, task plans, READMEs, and package metadata agree before an agent ships the wrong thing. 📐

## Source attribution

Created during the 2026-05-18 evening OSS Factory run. Inspired by local OSS Factory mismatches between PRDs, TASKS docs, README claims, package metadata, and smoke scripts. The idea is renamed and scoped as an offline consistency checker rather than a hosted project-management tool.

## Target users

- Agents building from local PRDs and task plans.
- Maintainers preparing small OSS projects for release.
- Reviewers checking whether docs and metadata describe the same product.

## Problem

Small generated repos often drift while being built: the PRD promises commands the README omits, `package.json` describes a different scope, TASKS remain unchecked, and examples mention files that do not exist. This creates polished-looking but unreliable OSS.

## Goals

- Parse local planning docs, README, package metadata, examples, and scripts.
- Detect inconsistent names, command claims, missing files, unchecked tasks, stale status labels, and absent safety docs.
- Emit deterministic Markdown/JSON reports with failure thresholds.
- Provide presets for local-first TypeScript CLI projects.
- Avoid external calls and keep all evidence local.

## Non-goals

- Rewriting docs automatically.
- Full natural-language understanding.
- Project management sync or issue tracker integration.

## V1 CLI

```bash
specguard check . --out docs/SPECGUARD.md
specguard check fixtures/drift --format json --fail-on medium
specguard init --preset oss-cli
```

## Functional requirements

1. Read `docs/PRD.md`, `docs/TASKS.md`, `README.md`, `package.json`, examples, and validation scripts when present.
2. Extract project name, command names, documented files, script names, status fields, tasks, and safety claims with deterministic heuristics.
3. Flag mismatches, missing docs, broken command references, unchecked required tasks, absent examples, and metadata drift.
4. Support `specguard.config.json` for required docs, allowed aliases, ignored checks, and severity overrides.
5. Emit stable Markdown/JSON with evidence and suggested fixes.
6. Include fixture-backed tests for clean, name drift, command drift, missing docs, stale tasks, and config override cases.

## Acceptance criteria

- `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and `bash scripts/validate.sh` pass where present.
- Real CLI smoke checks a fixture repo and the generated repo itself.
- README includes install, quick start, rule model, examples, safety model, limitations, and CI usage.
- Public GitHub repo `rogerchappel/specguard` has useful description and topics.


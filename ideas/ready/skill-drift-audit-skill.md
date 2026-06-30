# Skill Drift Audit Skill

Status: ready
Decision: build
Updated: 2026-07-01

## Pitch

A local-first agent skill that compares a live `SKILL.md` against repo docs, task files, and release notes, then produces a drift report with concrete refresh actions.

## Why It Matters

Agent skills become risky when their durable instructions lag behind the project they describe. Roger's skill repos now have release-candidate PRs, validation scripts, and safety boundaries; a reusable drift audit would help agents catch stale examples, missing approval rules, and outdated validation commands before recommending or packaging a skill.

## Attribution

Inspired by recurring maintenance work across Roger's public skill repos such as `skilldeck`, `safetydeck`, `actiondeck`, `skill-release-gate`, and `agent-eval-pack-skill`. This is original local-first workflow infrastructure, not a copy of any external project.

## Users

- Agents refreshing public skill repos.
- Maintainers reviewing release-candidate skill updates.
- Teams with repo-local skills that need evidence-backed docs hygiene.

## V1 Scope

- Read local `SKILL.md`, README, docs, package scripts, and changelog files.
- Detect stale validation commands, missing side-effect boundaries, missing approval notes, and examples that reference absent files.
- Emit deterministic Markdown and JSON drift reports.
- Include a dry-run action plan with suggested file edits but no automatic writes by default.
- Include fixture-backed tests for clean, stale, and partially documented skill repos.

## Out of Scope

- Network lookups, hosted registries, or marketplace checks.
- Automatically rewriting skills in V1.
- Secret scanning beyond obvious placeholder warnings.

## CLI Sketch

```sh
skill-drift-audit scan . --format markdown
skill-drift-audit scan fixtures/stale-skill --format json
skill-drift-audit plan . --output tmp/skill-drift-plan.md
```

## Skill Requirements

- Include `SKILL.md` explaining when to use the audit, required inputs, side-effect boundaries, approval requirements, examples, and validation workflow.
- Default commands must be read-only unless an explicit output path is supplied.

## Verification

- Unit tests for parsing and drift heuristics.
- Fixture-backed CLI smoke against clean and stale skill repos.
- `npm run check`, `npm test`, `npm run smoke`, and `npm run package:smoke`.

## Classification

ship candidate

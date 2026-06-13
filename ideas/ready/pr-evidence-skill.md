# PRD: pr-evidence-skill

Status: ready
Decision: ready for OSS factory build on 2026-06-13

## Scorecard

Total: 86/100
Band: build now
Last scored: 2026-06-13
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agents frequently open PRs without a compact, reproducible evidence pack for reviewers. |
| Demand signal | 17/20 | Roger's OSS lanes repeatedly need PR bodies with exact commands, package dry-run evidence, branch state, and residual risks. |
| V1 buildability | 18/20 | A deterministic CLI can collect local git metadata, command transcripts, package contents, and checklist status from fixtures. |
| Differentiation | 13/15 | Focuses on agent-created release-candidate PR evidence, not generic changelog or CI summary generation. |
| Agentic workflow leverage | 15/15 | Helps agents produce reviewable PRs and reduces missing verification notes. |
| Distribution potential | 5/10 | Useful for local agent builders, maintainers, and release engineers; needs demos to broaden appeal. |

## Pitch

A local-first skill and CLI for assembling PR evidence packs from git state, verification commands, package dry runs, and reviewer-facing release notes.

## Why It Matters

Agent-authored PRs are easier to trust when the reviewer sees what changed, what commands ran, what artifacts contain, and where the remaining risks are. Today that evidence is often scattered across terminal output and chat. `pr-evidence-skill` should make it repeatable without uploading private logs.

## V1 Scope

- CLI: `pr-evidence collect`, `pr-evidence render`, and `pr-evidence check`.
- Parse local git branch, commit range, changed files, and optional command-result JSON.
- Render Markdown PR bodies with summary, verification, package contents, risks, and next steps.
- Include a `SKILL.md` explaining when agents should collect evidence before opening or updating a PR.
- Fixture-backed tests for clean, failing, and partially verified runs.
- No network calls or GitHub writes in default commands.

## Out of Scope

- Opening PRs directly.
- Uploading logs or artifacts.
- Replacing CI.
- Inferring correctness beyond recorded evidence.

## CLI/API Sketch

```bash
pr-evidence collect --commands ./fixtures/commands.json --out evidence.json
pr-evidence render evidence.json --format markdown
pr-evidence check evidence.json --require verification,risks
```

## Verification

- Unit tests for git metadata parsing, command result normalization, and Markdown rendering.
- CLI smoke against local fixtures.
- README with examples, limitations, and safety notes.
- Package dry run showing docs, fixtures, and `SKILL.md`.

## Agent Prompt

Build `pr-evidence-skill` as a local-first PR evidence packer for agent-authored release-candidate PRs. Keep GitHub writes out of V1, make reports deterministic, and include fixtures that demonstrate both passing and incomplete verification.

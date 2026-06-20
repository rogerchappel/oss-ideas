# PRD: skill-release-gate

Status: in-progress
Decision: build now
Created: 2026-06-20
Updated: 2026-06-20

## One-liner

`skill-release-gate` checks whether an agent skill folder is ready to share by validating its instructions, side-effect boundaries, examples, fixtures, and release notes.

## Problem

Agent skills are easy to publish as prompt text but hard to trust. Reviewers need a repeatable local checklist that catches missing activation guidance, vague tool requirements, unsafe external-action language, missing verification workflow, and absent examples before a skill is shared publicly.

## Users

- Agent builders packaging reusable skills
- Maintainers reviewing skill PRs
- Coding agents preparing release candidates for skill repos

## V1 Scope

- CLI: `skill-release-gate check <path>`.
- Parse `SKILL.md`, `README.md`, `docs/PRD.md`, `docs/TASKS.md`, and `docs/ORCHESTRATION.md` when present.
- Emit deterministic JSON and Markdown reports.
- Score readiness across activation, inputs, tool requirements, side effects, approvals, examples, verification, fixtures, and release notes.
- Include fixture-backed tests for passing, warning, and failing skill folders.
- Default to local-only file inspection with no network calls.

## Out of Scope

- Installing skills into any host.
- Publishing packages or GitHub releases.
- Proving security properties beyond heuristic review.

## CLI Sketch

```bash
skill-release-gate check ./examples/good-skill
skill-release-gate check ./skills/release-helper --format json
```

## Verification

- Unit tests for parser, checks, scoring, and renderers.
- CLI smoke test against local fixtures.
- README examples, safety notes, and release-candidate checklist.

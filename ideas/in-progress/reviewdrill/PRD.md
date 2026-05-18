# ReviewDrill PRD

Status: in-progress
Decision: build now
Factory run: 2026-05-18 PM

## One-liner

`reviewdrill` rehearses a local code review by turning a git diff into deterministic checklists, risk notes, and verification prompts. 🔎

## Source attribution

Created during the 2026-05-18 evening OSS Factory run. Web search was attempted but the configured provider rejected the search option. This is based on Roger's local-first review workflow, recurring agent handoff needs, and general public patterns around diff review checklists; it is not copied from an external project.

## Target users

- Maintainers reviewing agent-generated diffs.
- Agents preparing a concise review pack before pushing.
- Solo developers who want a repeatable local review pass.

## Problem

Before commits land, agents often summarize what changed but miss risk categories: public API changes, dependency updates, generated files, tests touched, docs drift, and missing verification. Reviewers need a deterministic pre-review drill that runs locally and does not require an LLM.

## Goals

- Read git diff metadata and changed files without mutating the repo.
- Classify risk categories using paths, extensions, package metadata, and diff hints.
- Generate a review checklist, verification suggestions, and rollback notes.
- Emit Markdown/JSON suitable for PR descriptions or local handoffs.
- Support config rules for repo-specific high-risk paths and required checks.

## Non-goals

- Judging code correctness semantically.
- Opening PRs or posting comments.
- Calling hosted AI services.

## V1 CLI

```bash
reviewdrill diff --base main --out REVIEW_DRILL.md
reviewdrill diff --staged --format json --fail-on high
reviewdrill init --preset oss-cli
```

## Functional requirements

1. Read `git diff --name-status`, `--numstat`, and selected patch headers for staged, working tree, or base refs.
2. Classify docs, tests, source, config, dependency, generated, security-sensitive, release, and CI changes.
3. Detect missing nearby tests, package manager drift, large diffs, deleted files, and likely generated churn.
4. Render stable Markdown and JSON with findings, checklists, verification suggestions, and risk summary.
5. Support `reviewdrill.config.json` with high-risk globs, required checks, ignored paths, and severity overrides.
6. Include fixture-backed tests using small git fixture repositories and static diff samples.

## Acceptance criteria

- `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and `bash scripts/validate.sh` pass where present.
- Real CLI smoke runs against a fixture repo and the current repo diff in dry mode.
- README covers quick start, review model, examples, config, safety, and limitations.
- Public GitHub repo `rogerchappel/reviewdrill` has useful description and topics.


# agent-evidence-binder-skill

Status: built

## Summary

Build a local-first agent skill that bundles repository evidence, command output,
and claim notes into a reviewable evidence packet before an agent drafts public
content, opens a PR, or asks for approval.

## Users

- Agents preparing launch material from repo facts.
- Maintainers reviewing whether a draft is adequately sourced.
- Release reviewers who need a compact evidence manifest.

## MVP

- CLI reads a local repo and optional command-output JSON files.
- Emits `evidence-pack.json` and `evidence-summary.md`.
- Classifies each claim as `sourced`, `inferred`, or `needs-review`.
- Rejects paths that escape the source root.
- Includes fixtures, tests, smoke command, `SKILL.md`, and release-candidate docs.

## Safety

Local files only. No web fetches, no publishing, no external account writes.

## Classification

agent-skill; repo-to-content; release-readiness

## Build result

Built public repository on 2026-06-18. Classification: ship.

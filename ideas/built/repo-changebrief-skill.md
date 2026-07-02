# repo-changebrief-skill

Status: built
Lane: agent-skill
Owner: oss-factory-agent-skills
Repo: https://github.com/rogerchappel/repo-changebrief-skill
PR: https://github.com/rogerchappel/repo-changebrief-skill/pull/1

## Problem

Agents often finish repository work with raw diffs, command logs, and scattered notes, then struggle to turn that into launch-ready content that is accurate, evidence-backed, and scoped to the actual change.

## Product

Build a local-first skill and CLI that turns a repository change summary into:

- release-note bullets
- demo outline
- social post draft
- verification and artifact evidence list
- risk and follow-up notes

## MVP Requirements

- Accept markdown or JSON change summaries.
- Extract changed files, verification commands, risks, and audience hints.
- Classify change type and produce reusable content blocks.
- Include fixture-backed tests and a smoke command.
- Document side-effect boundaries and approval requirements in `SKILL.md`.

## Safety

The tool must not publish posts, tag releases, edit external systems, or infer unverifiable claims. It should label missing evidence and keep all output local unless a human explicitly copies it elsewhere.

## Classification

ship

## Verification

- `npm test` passed
- `npm run check` passed
- `npm run smoke` passed
- `bash scripts/validate.sh` passed

## Notes

Initial public build completed with `main` protected best-effort and release-candidate branch `release-candidate/repo-changebrief-skill`.

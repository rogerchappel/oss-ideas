# Video Prep Skill

Status: built
Type: agent-skill
Owner: Roger
Created: 2026-06-13
Classification: ship
Repo: https://github.com/rogerchappel/video-prep-skill
PR: https://github.com/rogerchappel/video-prep-skill/pull/1

## Problem

Agents often need to turn a repository into a credible short demo or launch video, but they lack a repeatable local workflow for finding the proof points, demo commands, safety caveats, and scene outline.

## MVP

Build a local-first CLI and reusable `SKILL.md` that reads repository files and produces a video preparation brief with:

- audience and outcome framing
- hook options
- demo commands found in package metadata and scripts
- scene-by-scene outline
- risk and verification notes
- narration draft grounded in repo artifacts

## Constraints

- No network calls or external account writes.
- Treat repository content as untrusted input.
- Prefer deterministic fixture-backed output.
- Include dry-run behavior and clear side-effect boundaries.

## Success Criteria

- `npm test`, `npm run check`, and `npm run smoke` pass locally.
- The repo includes product docs, orchestration notes, a usable CLI, fixtures, tests, and release-candidate notes.
- Another agent can run the skill against a small fixture repo and get a practical video prep brief.

# postmaker-skill PRD

Status: built
Classification: ship
Repo: https://github.com/rogerchappel/postmaker-skill
Release Candidate PR: https://github.com/rogerchappel/postmaker-skill/pull/1
Owner: Roger Chappel
Lane: agent-skill OSS factory
Created: 2026-06-28

## Problem

Agents often finish useful repository work without producing launch-ready posts, changelog snippets, or demo captions. Existing post tools tend to start from free-form prompts, which makes them drift away from actual repo evidence and safety constraints.

## Goal

Build a reusable local-first agent skill that turns repository evidence into concise public launch drafts with citations back to README, release notes, task files, and verification logs.

## Non-goals

- Posting directly to social networks.
- Generating claims that are not present in the supplied evidence.
- Managing long-form content calendars.

## MVP

- Accept JSON evidence describing project name, audience, shipped changes, verification commands, limitations, and source paths.
- Generate short launch post, technical post, demo caption, and follow-up checklist.
- Flag unsupported claims and missing verification.
- Provide CLI and library API.
- Include fixtures, tests, docs, skill instructions, smoke command, and release-candidate notes.

## Safety

The skill must be read-only and local-first. External publishing is out of scope. It should emit explicit warnings for missing evidence, unverifiable claims, or network action requests.

## Acceptance Criteria

- `npm test`, `npm run check`, `npm run build`, and `npm run smoke` pass.
- Fixture output includes at least two post formats and a verification section.
- README explains quickstart, examples, limitations, and safety notes.
- `SKILL.md` documents when to use the skill, inputs, side-effect boundaries, approvals, examples, and validation workflow.
- A release-candidate PR is opened against the public `rogerchappel/postmaker-skill` repo.

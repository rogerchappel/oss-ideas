# skillbrief

Status: built

## Summary

Build a local-first agent skill that turns repository facts, recent commits, and optional issue notes into a concise content brief for launch posts, README refreshes, and demo scripts.

## Problem

Agents often jump from code inspection directly to prose. That creates brittle launch material because claims are not traced to files, commits, or fixtures.

## Users

- Agent builders preparing release notes, demo copy, or social posts.
- Maintainers who want traceable content briefs before writing public material.

## MVP

- Parse a repo summary JSON fixture with commits, files, tests, risks, and audience.
- Generate a Markdown brief with positioning, proof points, risk notes, and suggested channels.
- Include a `SKILL.md` describing when agents should use the skill and what approvals are needed before publishing externally.
- Provide a CLI smoke command and fixture-backed tests.

## Safety

- Local-only by default.
- No publishing, posting, or remote writes.
- Mark unverified claims as gaps.

## Classification Target

ship

## Build Result

- Repo: https://github.com/rogerchappel/skillbrief
- Release candidate PR: https://github.com/rogerchappel/skillbrief/pull/1
- Branch: release-candidate/skillbrief
- Classification: ship

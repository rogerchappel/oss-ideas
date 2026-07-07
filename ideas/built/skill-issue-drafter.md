# skill-issue-drafter

Status: built
Classification: ship
Repo: https://github.com/rogerchappel/skill-issue-drafter
PR: https://github.com/rogerchappel/skill-issue-drafter/pull/1
Type: agent-skill OSS repo

## Problem

Agents reviewing repos or skill runs frequently find useful follow-up work but produce inconsistent issue drafts. Maintainers need a structured, local-first drafter that turns evidence into clear GitHub issue bodies without writing to GitHub by default.

## MVP

- Node.js CLI that reads findings from JSON fixtures.
- Groups findings by severity, owner, and affected file.
- Produces Markdown issue drafts with reproduction, evidence, proposed fix, and verification sections.
- Supports dry-run output only; no network writes.
- Includes fixture-backed tests, examples, and docs for agent usage.

## Safety

All external issue creation remains out of scope for MVP. The skill requires explicit human approval before any future connector action.

## Release candidate bar

- `npm test`, `npm run check`, `npm run smoke`.
- Public repo with `SKILL.md`, docs, examples, and release-candidate PR.

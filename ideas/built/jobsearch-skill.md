# JobSearch Skill PRD

Status: built
Classification: ship
Repo: https://github.com/rogerchappel/jobsearch-skill
PR: https://github.com/rogerchappel/jobsearch-skill/pull/1
Owner: OSS factory
Lane: agent skills
Created: 2026-06-17

## Summary

Build `jobsearch-skill`, a local-first agent skill that turns a saved job post, resume notes, and optional company notes into a concise application brief. It should help an agent prepare outreach, fit notes, risk flags, and follow-up tasks without writing to external job boards or CRMs.

## Problem

Agents often receive messy job descriptions and candidate notes, then jump straight to a generic cover letter. Roger needs reusable infrastructure that forces a safer intermediate step: parse the opportunity, identify evidence gaps, map candidate strengths to requirements, and produce an action plan that can be reviewed before any external send.

## Users

- Agents preparing job applications for a human reviewer.
- Builders testing job-search workflows with local fixtures.
- Researchers comparing role requirements across posts.

## MVP Requirements

- Provide a CLI that accepts a job post markdown file plus optional candidate notes.
- Parse title, company, location, seniority signals, hard requirements, soft requirements, and application instructions.
- Generate a deterministic application brief with fit score, evidence map, missing evidence, risk flags, and next actions.
- Include a `SKILL.md` explaining when to use the skill, required inputs, side-effect boundaries, approval requirements, examples, and verification.
- Include fixture-backed tests and a smoke command.
- Avoid external account writes and network requirements.

## Non-Goals

- No automated applications.
- No live scraping.
- No resume fabrication.
- No CRM or applicant-tracking-system writes.

## Acceptance Checks

- `npm test`
- `npm run check`
- `npm run smoke`
- CLI fixture run produces stable markdown and JSON outputs.

## Classification Target

Ship if the parser, scorer, CLI, docs, and skill instructions are usable locally with fixtures.

# Meetingbrief Skill

Status: ready

## Summary

Build `meetingbrief-skill`, a local-first agent skill and CLI that turns a meeting context bundle into a concise prep brief, agenda, risk checklist, and follow-up draft without writing to calendars, CRMs, or email.

## Problem

Agents often receive messy meeting inputs: notes, attendee lists, recent project context, company snippets, and open questions. A reusable skill should normalize those inputs into a predictable preparation packet while keeping side effects out of scope.

## MVP

- `SKILL.md` that explains when to use the skill, required inputs, side-effect boundaries, examples, and verification.
- CLI that accepts a JSON meeting bundle and emits Markdown or JSON.
- Parser and planner library that extracts attendees, goals, context notes, unresolved questions, risks, and follow-up actions.
- Fixture-backed tests for complete, sparse, and malformed meeting bundles.
- README quickstart, examples, limitations, and safety notes.
- `docs/PRD.md`, `docs/TASKS.md`, `docs/ORCHESTRATION.md`, and release-candidate notes.

## Non-goals

- No live calendar, email, CRM, or messaging writes.
- No external enrichment during the MVP.
- No private attendee data in fixtures.

## Verification

- `npm test`
- `npm run check`
- `npm run build`
- `npm run smoke`

## Classification Target

Ship if the CLI produces stable prep briefs from fixtures and documents approval requirements for any future external action.

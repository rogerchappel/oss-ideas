# PRD: meeting-followup-skill

Status: built
Classification: ship

## Summary
A local-first agent skill that turns meeting notes or transcripts into safe follow-up drafts, CRM-ready summaries, action registers, and verification checklists without writing to external systems.

## Users
Agent builders, founders, recruiters, and operators who need repeatable meeting follow-up from messy notes.

## Problem
Agents often draft follow-ups from meetings without clear action ownership, side-effect boundaries, or a validation pass for promises and sensitive content.

## MVP
- Parse plain text or markdown meeting notes.
- Extract attendees, decisions, risks, open questions, and owner-tagged action items.
- Generate follow-up email drafts, CRM notes, and next-step plans.
- Flag missing owners, due dates, external-write requests, and sensitive-looking tokens.
- Ship a reusable SKILL.md with approval boundaries and verification workflow.

## Non-goals
- No email sending, CRM writes, or calendar writes.
- No live transcript ingestion.

## Validation
Fixture-backed tests, CLI smoke command, package import smoke, and release-candidate checklist.

## Build Result

- Repo: https://github.com/rogerchappel/meeting-followup-skill
- Release candidate PR: https://github.com/rogerchappel/meeting-followup-skill/pull/1
- Built by cron lane: oss-factory-agent-skills on 2026-06-11.

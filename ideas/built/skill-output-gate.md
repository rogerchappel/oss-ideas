# Skill Output Gate

Status: built

## Summary

Build a reusable agent skill that checks a completed agent output bundle against expected evidence, verification commands, safety notes, and handoff criteria before the result is sent or merged.

## Problem

Agent results can be plausible but incomplete: missing command results, unlinked artifacts, unmentioned failures, or unclear follow-up state. A local output gate gives agents a repeatable preflight before publishing their final response.

## Users

- Agent operators who want consistent final-response quality
- OSS automation lanes that need concise release-candidate evidence
- Skill authors who want fixture-backed completion checks

## MVP

- CLI that reads a run summary in Markdown or JSON
- Rule engine for required artifacts, verification results, risk disclosure, and next-action clarity
- Deterministic pass/warn/fail report as JSON and Markdown
- Fixture-backed tests and smoke command
- `SKILL.md` explaining use, side-effect boundaries, and validation workflow

## Safety

- Local-only by default
- Never sends messages or writes to external services
- Treats missing verification or hidden failures as blocking findings

## Classification Criteria

- `ship`: catches fixture failures and documents gate behavior clearly
- `incubate`: checks are useful but need more adapters
- `kill/merge`: duplicates an existing audit repo without a distinct final-output gate

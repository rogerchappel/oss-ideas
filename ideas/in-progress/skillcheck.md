# skillcheck

Status: in-progress

## Summary

Build a local-first CLI that audits `SKILL.md` files for agent-skill completeness, safety boundaries, examples, and validation workflow coverage.

## Problem

Agent skills are easy to publish with missing operational details. Builders need a quick fixture-backed check before sharing a skill publicly or installing it into an agent runtime.

## MVP

- Parse one or more `SKILL.md` files.
- Score required sections: when to use, inputs, required tools, side effects, approvals, examples, validation, and limitations.
- Flag risky wording around live writes, credentials, or external actions when approval language is missing.
- Emit text and JSON reports.
- Include fixtures and tests for pass, warn, and fail examples.
- Provide `SKILL.md`, PRD, tasks, orchestration notes, smoke command, and release candidate notes.

## Non-goals

- No live skill installation.
- No external account writes.
- No LLM dependency.

## Classification Criteria

- Ship if the CLI can catch missing safety/validation sections and explain remediation.
- Incubate if the first rule set is useful but needs more skill package formats.
- Kill/merge if it duplicates an existing skill drift tool without a clearer local linting use case.

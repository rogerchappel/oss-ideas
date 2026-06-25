# skillenv

Status: in-progress

## Summary

Build a local-first CLI that audits agent `SKILL.md` files for declared runtime requirements, environment variables, tools, and external-action boundaries.

## Problem

Agent skills often mention tools, credentials, or command requirements in prose, but do not give another builder a clear way to verify that the local environment can run the skill safely. Builders need a small preflight report before installing or sharing a skill.

## MVP

- Parse one or more `SKILL.md` files.
- Extract required tools, optional tools, environment variables, input files, approval requirements, and external side effects.
- Compare extracted requirements with the local process environment and PATH.
- Emit human-readable and JSON reports.
- Fail only on missing required requirements or unsafe live-action language without approval boundaries.
- Include fixtures and tests for ready, missing-env, and unsafe-action skills.
- Provide `SKILL.md`, PRD, tasks, orchestration notes, smoke command, and release candidate notes.

## Non-goals

- No secret collection or credential validation.
- No live external writes.
- No automatic tool installation.
- No LLM dependency.

## Classification Criteria

- Ship if the CLI produces useful preflight reports and catches missing approval language.
- Incubate if extraction works for common skill sections but needs more formats.
- Kill/merge if it duplicates an existing skill lint repo without clearer environment-readiness value.

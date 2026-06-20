# Skill Input Contract

Status: in-progress

## Summary

Build a local-first agent skill that turns a loose user request, available context, and tool boundaries into a machine-checkable input contract before an agent starts work.

## Problem

Agents often begin long tasks with implicit assumptions about files, accounts, side effects, and missing inputs. A lightweight contract generator can make the required inputs, optional context, prohibited actions, and verification evidence explicit without requiring a full workflow engine.

## Users

- Agent builders packaging reusable skills
- Operators reviewing proposed agent runs
- Maintainers who want fixture-backed request validation

## MVP

- CLI that reads a Markdown or JSON task brief
- Parser that extracts requested outcome, inputs, constraints, side effects, and open questions
- Contract schema with deterministic JSON output
- Markdown report for human review
- Fixture-backed tests and a smoke command
- `SKILL.md` describing when to use it and how to validate output

## Safety

- Local-only by default
- No external writes
- Highlight unknown side effects and missing approval requirements

## Classification Criteria

- `ship`: works on fixtures, includes clear safety boundaries, and produces both JSON and Markdown
- `incubate`: useful parser but coverage gaps remain
- `kill/merge`: duplicates an existing contract or planning repo without a distinct input-contract focus

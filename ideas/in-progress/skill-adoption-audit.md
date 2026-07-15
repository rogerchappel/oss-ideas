# skill-adoption-audit

Status: ready
Type: agent-skill
Priority: high

## Problem

Many agent skills are technically present but hard for another agent to adopt because required inputs, side-effect boundaries, verification workflow, and example prompts are incomplete or scattered.

## Users

- Skill authors preparing public skills
- Agents reviewing skill packages before release
- Maintainers triaging skill quality across repositories

## MVP

Build a local-first CLI and library that audits a skill package directory. It should inspect `SKILL.md`, README, docs, fixtures, and package metadata, then produce an adoption scorecard with blocking gaps and suggested fixes.

## Inputs

- Path to a skill repository or package directory
- Optional checklist JSON for team-specific requirements

## Outputs

- Markdown adoption report
- JSON scorecard for CI
- Non-zero exit for missing required adoption items when `--strict` is enabled

## Safety

Read-only filesystem inspection. No network calls, package publishing, repository mutation, or external actions.

## Acceptance

- Includes `SKILL.md`, `docs/PRD.md`, `docs/TASKS.md`, `docs/ORCHESTRATION.md`, and release-candidate notes
- Includes fixture-backed tests and a smoke command
- CLI checks required skill sections, examples, side-effect boundaries, validation workflow, docs, fixtures, and package metadata
- Report separates blockers, warnings, and passing adoption evidence


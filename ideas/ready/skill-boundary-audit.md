# skill-boundary-audit

Status: ready
Lane: agent-skill
Classification target: ship

## Problem

Agent skills often bury side effects, approval requirements, and tool assumptions inside prose. Reviewers need a local-first way to audit `SKILL.md` files before installing, sharing, or running them.

## MVP

Build a small CLI/library that reads one or more skill markdown files and emits:

- detected side-effect boundaries
- external-action and approval language
- tool/input requirements
- missing safety sections
- a deterministic Markdown or JSON report

## Inputs

- local `SKILL.md` paths
- optional fixture directory
- optional `--format markdown|json`

## Outputs

- concise audit report
- non-zero exit only for malformed input or `--fail-on high`
- release-candidate notes and validation fixtures

## Safety

No network access is required. The tool must only read explicit local files and write reports when an output path is provided.

## Verification

- fixture-backed parser tests
- CLI smoke against example skills
- package import smoke


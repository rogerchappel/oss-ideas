# Skillpackager

Status: ready

## Summary

Build a local-first agent-skill packaging helper that inspects a candidate `SKILL.md`, fixtures, and docs, then produces a manifest, validation report, and distributable package plan without publishing or installing anything.

## Why now

Agent skill repos are accumulating, but each one still needs repeatable checks for trigger clarity, side-effect boundaries, examples, validation steps, and portable file layout. A small OSS CLI can make skill packaging less ad hoc for Roger's agentic workflows and other skill authors.

## MVP

- CLI that accepts a skill directory and emits JSON plus Markdown reports.
- Parser for `SKILL.md` sections, front matter, examples, and validation notes.
- Manifest generator with package name, files, checks, and side-effect declarations.
- Fixture-backed tests for valid and invalid skill directories.
- Dry-run only by default; no package publishing, installs, or external account writes.

## Required project artifacts

- `docs/PRD.md`
- `docs/TASKS.md`
- `docs/ORCHESTRATION.md`
- `SKILL.md`
- README with quickstart, examples, limitations, and safety notes
- CLI smoke script and fixture-backed tests

## Classification target

Ship if the CLI can validate fixtures and generate both JSON and Markdown reports locally.

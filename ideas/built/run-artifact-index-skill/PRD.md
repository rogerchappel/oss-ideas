# run-artifact-index-skill

Status: built
Created: 2026-07-13
Source: oss-factory-agent-skills queue replenishment

## Summary

Build a local-first agent skill that indexes files produced during an agent run, groups them by purpose, and emits a reviewable artifact map for handoff notes, PR bodies, and release-candidate evidence.

## Problem

Long agent runs leave screenshots, logs, generated reports, fixtures, and packaged artifacts spread across a workspace. Reviewers need a compact index that explains which files matter, which are disposable, and which verification command produced each artifact.

## Users

- Agent builders preparing release-candidate PRs.
- Maintainers reviewing handoff evidence.
- Automation agents that need a read-only artifact inventory before summarizing a run.

## MVP

- CLI scans a directory tree using configurable include/exclude globs.
- Classifies artifacts as evidence, fixture, report, generated output, package, or disposable.
- Reads optional command ledger JSON to connect artifacts to verification commands.
- Emits markdown and JSON summaries.
- Includes a `SKILL.md` describing when to use the artifact index and how to keep it read-only.

## Safety

- Local filesystem reads only by default.
- No network calls and no deletion mode.
- Redacts private home-directory prefixes in markdown output.
- Requires explicit `--include-hidden` before scanning dot-directories.

## Verification

- Fixture-backed tests for classification, exclusion, redaction, and ledger joins.
- CLI smoke command against sample run artifacts.
- Package/import smoke.
- Release-candidate checklist with known limitations.

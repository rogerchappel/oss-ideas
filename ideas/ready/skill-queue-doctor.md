# skill-queue-doctor

Status: in-progress

## Summary

Build a local-first agent skill that audits an OSS skill-factory idea queue, detects stale or duplicate PRDs, and drafts ready-lane replenishment candidates without touching external systems.

## Problem

Agent skill factory runs can stall when `ideas/ready` is empty, backlog folders are missing, or existing project names overlap with public repositories. Operators need a repeatable way to inspect queue health, explain blockers, and generate well-attributed PRD drafts while preserving manual review.

## Users

- Agent builders maintaining public OSS skill lanes.
- Automation agents that need a dry-run queue hygiene report.
- Maintainers reviewing whether a generated PRD is worth promoting.

## MVP

- CLI reads an `ideas/` directory and optional repo-name inventory.
- Reports ready/in-progress/built counts, missing folders, stale statuses, and duplicate names.
- Generates markdown PRD drafts from a structured candidate file.
- Emits JSON and markdown outputs.
- Never moves files or creates repos unless a future explicit write mode is added.

## Safety

- Local filesystem reads only by default.
- No network calls.
- Drafts are written only to an output directory supplied by the user.
- Existing files must not be overwritten unless `--force` is supplied.

## Verification

- Fixture-backed tests for queue audit, duplicate detection, and PRD rendering.
- CLI smoke command using sample fixtures.
- Release-candidate checklist documents known limitations.

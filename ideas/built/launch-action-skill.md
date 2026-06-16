# Launch Action Skill PRD

Status: built
Classification: ship
Repo: https://github.com/rogerchappel/launch-action-skill
PR: https://github.com/rogerchappel/launch-action-skill/pull/1
Owner: OSS factory
Lane: agent skills
Created: 2026-06-17

## Summary

Build `launch-action-skill`, a local-first agent skill that reads repo readiness evidence and produces a dry-run launch action plan for public OSS projects. It should bridge repo review, post creation, release readiness, and launch materials without publishing or changing external services.

## Problem

Agents can inspect a repo and create launch content, but they often skip the approval boundary between "ready to announce" and "actually publish". Roger needs a reusable skill that turns README, package metadata, test output, and optional content notes into a reviewed action plan with explicit blockers and approval gates.

## Users

- Agents preparing OSS launch material.
- Maintainers checking release readiness before a public post.
- Builders testing dry-run launch workflows.

## MVP Requirements

- Provide a CLI that accepts a local repo snapshot directory or fixture folder.
- Read README, package metadata, release notes, and verification logs when present.
- Produce a deterministic launch plan with readiness status, blocker list, announcement angles, assets needed, dry-run actions, and approval gates.
- Include a `SKILL.md` explaining side-effect boundaries and when external publish actions require explicit approval.
- Include fixture-backed tests and a smoke command.
- Avoid tagging releases, publishing packages, posting to social channels, or writing to external services.

## Non-Goals

- No live GitHub release creation.
- No package publishing.
- No social posting.
- No generated claims that are not backed by local evidence.

## Acceptance Checks

- `npm test`
- `npm run check`
- `npm run smoke`
- CLI fixture run produces stable markdown and JSON outputs.

## Classification Target

Ship if the planner, CLI, docs, skill instructions, and fixtures provide a useful dry-run launch workflow.

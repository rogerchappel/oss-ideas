# skill-manifest-audit-skill

Status: in-progress
Lane: agent-skill
Created: 2026-07-08
Source: cron queue replenishment after `ideas/ready` contained only README and no backlog directory existed.

## Problem

Agent-skill repositories drift in small ways that matter to downstream agents: missing `SKILL.md` sections, absent side-effect boundaries, no smoke command, incomplete package metadata, and release-candidate docs that cannot prove local verification.

## Users

- Agent builders preparing public skill packages.
- Maintainers reviewing release-candidate branches.
- Automation lanes that need a deterministic local readiness check.

## MVP

- Local-first CLI that audits a repo path.
- Parse `SKILL.md`, `package.json`, README, and docs files without network calls.
- Emit JSON and Markdown reports.
- Fixture-backed tests for passing and failing skill repos.
- Smoke command suitable for CI and agent factory runs.

## Safety

- Read-only by default.
- No credential, network, or external account access.
- Any future fixer mode must be explicit and dry-run first.

## Classification Target

Ship if the CLI catches common packaging failures and produces actionable release-candidate evidence.

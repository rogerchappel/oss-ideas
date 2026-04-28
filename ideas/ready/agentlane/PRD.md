# PRD: agentlane

Status: ready

## Pitch

Define safe, parallel lanes of work for agents across a repo or workspace.

## Why It Matters

Throughput comes from isolated lanes with clear scope, not one giant prompt.

## V1 Scope

- CLI: `agentlane plan`
- Reads repo files and optional `AGENTS.md`
- Suggests docs/tests/CLI/CI/examples/release lanes
- Emits branch name, allowed paths, stop-before-touching paths, checks, acceptance criteria
- Outputs Markdown and JSON

## Out of Scope

- No agent dispatch
- No worktree creation in V1
- No autonomous execution

## Verification

- Fixtures for CLI repo/docs repo/template repo
- Snapshot lane plans

## Agent Prompt

Build `agentlane`, a deterministic CLI that turns a repo into safe parallel work lanes for AI coding agents. It should emit Markdown/JSON lane plans with branch names, allowed paths, stop-before-touching paths, verification commands, and acceptance criteria. Include fixtures, tests, README, and examples.

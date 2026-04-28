# PRD: atomcommit

Status: ready

## Pitch

Turn messy working tree changes into an atomic commit plan.

## Why It Matters

High commit velocity only works if commits are clean, reviewable checkpoints.

## V1 Scope

- CLI: `atomcommit plan`
- Reads `git diff --name-status`, `git diff --stat`, optionally `git diff --numstat`
- Groups files into suggested commit slices by path/type
- Outputs Markdown and JSON
- Adds deterministic risk flags
- Suggests commit messages

## Out of Scope

- No auto-commit
- No auto-stage
- No LLM requirement

## Verification

- Fixture repos with mixed changes
- Snapshot tests for generated plans

## Agent Prompt

Build `atomcommit`, a deterministic local CLI that analyzes a git working tree and produces an atomic commit plan in Markdown/JSON. It must not mutate the repo. Include fixtures, risk flags, tests, README, and examples.

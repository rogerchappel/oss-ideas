# PRD: repoforge

Status: ready

## Pitch

Create new OSS repos from a template with all boring setup done.

## Why It Matters

Repo creation/setup should be a one-command factory step, not manual work.

## V1 Scope

- CLI: `repoforge new <name>`
- Reads `repoforge.config.json`
- Copies from `agentic-oss-template`
- Replaces template variables
- Initializes git
- Optional explicit GitHub creation only via flags/token
- Generates first issues from template checklist

## Out of Scope

- No agent dispatch
- No CI secret management
- No npm publishing

## Verification

- Generate fixture repo into `/tmp/repoforge-smoke`
- Confirm variables replaced
- Tests pass

## Agent Prompt

Build `repoforge`, a local-first Node CLI that creates new OSS repos from `agentic-oss-template`. Keep V1 deterministic and mostly offline. Implement config parsing, template copy, variable replacement, git init, smoke test fixture, README, and docs. Network/GitHub creation must be explicit via flags only.

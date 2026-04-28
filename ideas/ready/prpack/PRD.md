# PRD: prpack

Status: ready

## Pitch

Generate a complete PR handoff pack from branchbrief, qualitygate, and git metadata.

## Why It Matters

Review needs a standard packet: changed files, proof, risk, rollback, follow-ups.

## V1 Scope

- CLI: `prpack generate`
- Reads branchbrief/qualitygate artifacts if present
- Falls back to git metadata
- Outputs `PR_PACK.md` and PR body text
- Includes reviewer checklist

## Out of Scope

- No PR creation in V1
- No GitHub comments/reviews
- No LLM dependency

## Verification

- Fixtures for branchbrief + qualitygate present/missing
- Snapshot PR pack output

## Agent Prompt

Build `prpack`, a deterministic CLI that creates a PR handoff document from local git metadata plus optional `branchbrief` and `qualitygate` artifacts. Include Markdown output, PR body output, fixtures, tests, README, and examples.

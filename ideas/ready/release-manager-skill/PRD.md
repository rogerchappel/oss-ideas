# PRD: release-manager-skill

Status: ready
Decision: ready

## Scorecard

Total: 82/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Small repos often miss release readiness details. |
| Demand signal | 15/20 | Release automation and checks are common maintainer needs. |
| V1 buildability | 18/20 | Static checks plus dry-run reports are feasible. |
| Differentiation | 12/15 | Agent-safe release prep, not automatic publishing. |
| Agentic workflow leverage | 14/15 | Supports garden and factory quality. |
| Distribution potential | 5/10 | Strong OSS maintainer utility. |

## Pitch

Check whether a repo is ready for release and produce a dry-run release plan for human approval.

## Why It Matters

Agents should prepare releases without tagging or publishing unless explicitly approved.

## V1 Scope

- Check package metadata, changelog, tests, CI, README, license, and package files.
- Generate release checklist and dry-run plan.
- Refuse to tag/publish by default.

## Out of Scope

- Publishing packages.
- Creating final GitHub releases.

## CLI/API Sketch

```bash
release-manager-skill check ./repo
release-manager-skill plan ./repo --version 0.1.1
```

## Verification

- Fixture repos with pass/fail release readiness.
- Tests for no-side-effect defaults.

## Agent Prompt

Build `release-manager-skill` as a local release readiness checker and dry-run planner for agents.

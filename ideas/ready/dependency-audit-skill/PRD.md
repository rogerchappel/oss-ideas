# PRD: dependency-audit-skill

Status: ready
Decision: ready

## Scorecard

Total: 78/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Dependencies drift and security checks are noisy. |
| Demand signal | 16/20 | Every package maintainer cares about dependency health. |
| V1 buildability | 16/20 | Lockfile/package inspection is feasible. |
| Differentiation | 10/15 | Agent-readable remediation plan. |
| Agentic workflow leverage | 13/15 | Good garden stewardship input. |
| Distribution potential | 6/10 | Practical CLI. |

## Pitch

Inspect package dependencies and produce a prioritized, agent-readable remediation plan.

## Why It Matters

Agents need to distinguish urgent dependency problems from routine update noise.

## V1 Scope

- Parse package manifests and lockfiles.
- Report direct/transitive dependency overview.
- Detect stale engines, missing lockfiles, and obvious risky packages.
- Emit update plan without running installs by default.

## Out of Scope

- Vulnerability database mirroring.
- Automatic dependency updates in V1.

## CLI/API Sketch

```bash
dependency-audit-skill ./repo --out deps-report.md
```

## Verification

- Fixture repos with package files and lockfiles.
- Tests for missing lockfile and dependency classification.

## Agent Prompt

Build `dependency-audit-skill` as a local dependency health report generator for agent-maintained repos.

# PRD: skill-packager

Status: ready
Decision: ready

## Scorecard

Total: 81/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Agent skills need consistent manifests, examples, and validation. |
| Demand signal | 15/20 | Skill ecosystems are emerging around agent tools. |
| V1 buildability | 18/20 | File scaffolding and validation are straightforward. |
| Differentiation | 12/15 | Local packaging quality checks for skills. |
| Agentic workflow leverage | 14/15 | Supports the entire skills sprint. |
| Distribution potential | 5/10 | Useful to agent builders. |

## Pitch

Package agent skills with manifests, examples, tests, and docs so they are reusable instead of loose prompt snippets.

## Why It Matters

An agentic skills sprint needs quality controls. This tool makes skill repos consistent and reviewable.

## V1 Scope

- Scaffold skill directory.
- Validate required files: SKILL.md, examples, tests, manifest.
- Check instructions for unsafe side effects and missing approval notes.
- Generate README and usage examples.

## Out of Scope

- Publishing to marketplaces.
- Runtime execution of skills.

## CLI/API Sketch

```bash
skill-packager init my-skill
skill-packager check ./my-skill
```

## Verification

- Fixture valid/invalid skills.
- Tests for manifest and safety checks.

## Agent Prompt

Build `skill-packager` as a local scaffolder and validator for reusable agent skills.

# PRD: tutorial-cookbook-skill

Status: ready
Decision: ready

## Scorecard

Total: 77/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Tutorials need runnable examples, not generic prose. |
| Demand signal | 15/20 | Cookbook repos are widely useful for adoption. |
| V1 buildability | 17/20 | Recipe scaffolding and validation are feasible. |
| Differentiation | 11/15 | Agent-focused recipes with verification checklists. |
| Agentic workflow leverage | 13/15 | Supports tutorial/docs cron lane. |
| Distribution potential | 5/10 | Good docs/public repo fit. |

## Pitch

Generate and validate tutorial cookbook recipes for small tools, including commands, fixtures, and expected outcomes.

## Why It Matters

Public promotion needs more than posts; it needs examples someone can follow.

## V1 Scope

- Recipe template.
- Validate command blocks and referenced fixture files.
- Generate "what you should see" sections.
- Output recipe index.

## Out of Scope

- Full docs website generator.
- Arbitrary command execution by default.

## CLI/API Sketch

```bash
tutorial-cookbook-skill add ./repo --out recipes/
tutorial-cookbook-skill check recipes/
```

## Verification

- Fixture recipes.
- Tests for missing fixture references and command block extraction.

## Agent Prompt

Build `tutorial-cookbook-skill` as a local recipe generator and validator for OSS tutorial repos.

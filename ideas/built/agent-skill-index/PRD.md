# PRD: agent-skill-index

Status: built
Decision: built

## Scorecard

Total: 78/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Growing skill libraries need discovery and compatibility notes. |
| Demand signal | 15/20 | Tool/skill registries are useful for agent ecosystems. |
| V1 buildability | 18/20 | Static index generation is straightforward. |
| Differentiation | 11/15 | Agent-safety metadata and workflow categories. |
| Agentic workflow leverage | 13/15 | Helps agents choose the right skill. |
| Distribution potential | 5/10 | Useful ecosystem support. |

## Pitch

Index local agent skills by purpose, required tools, side effects, examples, and safety level.

## Why It Matters

As skills multiply, agents need a searchable catalog that explains when to use each one and what risks it carries.

## V1 Scope

- Scan skill directories.
- Extract name, description, triggers, required tools, side-effect policy, examples.
- Generate JSON index and Markdown catalog.
- Validate missing metadata.

## Out of Scope

- Hosted marketplace.
- Installing skills.

## CLI/API Sketch

```bash
agent-skill-index ./skills --out skill-index.json --docs SKILLS.md
```

## Verification

- Fixture skills.
- Tests for metadata extraction and missing-field warnings.

## Agent Prompt

Build `agent-skill-index` as a local catalog generator for reusable agent skills and safety metadata.

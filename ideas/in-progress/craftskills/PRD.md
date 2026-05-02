# craftskills

Status: in-progress

## Scorecard

Total: 86/100
Band: strong
Last scored: 2026-05-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agent users need small, composable skills that improve engineering discipline without taking over the whole process. |
| Demand signal | 17/20 | mattpocock/skills demonstrates strong interest in practical agent skills for real engineering. |
| V1 buildability | 18/20 | A curated skill collection, installer/exporter, and validator are feasible today. |
| Differentiation | 13/15 | Roger-flavoured OpenClaw/Codex-friendly skills focused on OSS factory quality, verification, and release polish. |
| Agentic workflow leverage | 14/15 | Directly improves future agent work. |
| Distribution potential | 6/10 | Strong if docs and examples are practical. |

## Pitch

A collection of small, composable engineering skills for agents: clarify scope, split commits, verify locally, review architecture, harden CLIs, and ship polished OSS.

## Why It Matters

This turns Roger's emerging operating style into reusable public artifacts. It also feeds back into the twice-daily OSS factory.

## Attribution / Inspiration

Inspired by the category represented by mattpocock/skills. Do not copy skills, wording, installer behavior, or structure. Build original skills tuned for Roger's StackForge/OpenClaw workflows.

## V1 Scope

- Skills under `skills/engineering/*/SKILL.md` with clear descriptions.
- CLI/validator to list, lint, package, and install/export skills into a target directory.
- Initial skills: `scope-slicer`, `atomic-commits`, `verify-before-ship`, `oss-readme-polish`, `agent-debug-loop`, `release-guard`.
- Examples and recipes for OpenClaw/Codex-style usage.
- Contribution guide and skill authoring guide.

## Out of Scope

- Depending on one proprietary agent.
- Auto-editing private agent configs without explicit target path/confirmation.
- Copying third-party skills.

## Verification

- Tests for skill schema, installer dry-run, packaging, and linting.
- Smoke test listing and exporting skills to a temp directory.

## Agent Prompt

Build `craftskills` as an original engineering-skills collection for agents. Use StackForge, implement a working validator/installer dry-run, docs, tests, smokes, publish, metadata, branch protection.

# PRD: tool-demo-script

Status: in-progress
Decision: ready

## Scorecard

Total: 80/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | CLI demos often fail because scripts drift from actual commands. |
| Demand signal | 15/20 | Dev tools need demos for READMEs, videos, and talks. |
| V1 buildability | 18/20 | Can inspect package scripts and run safe command checks. |
| Differentiation | 12/15 | Demo scripts with executable verification. |
| Agentic workflow leverage | 13/15 | Agents can generate demos that actually run. |
| Distribution potential | 5/10 | Strong OSS maintainer utility. |

## Pitch

Create runnable demo scripts and narration from a CLI repo, then verify the commands still work.

## Why It Matters

Promotion content is stronger when the demo is real. This tool catches fake or stale commands before they reach a video or README.

## V1 Scope

- Detect package manager and CLI entrypoint.
- Generate demo script, sample fixture, narration, and expected output notes.
- Run a dry smoke command when safe.
- Emit a demo confidence report.

## Out of Scope

- Terminal recording.
- Browser automation.

## CLI/API Sketch

```bash
tool-demo-script ./repo --out demo/
tool-demo-script verify demo/demo.md --repo ./repo
```

## Verification

- Fixture CLIs with passing and failing demo commands.
- Tests for command allowlist safety.

## Agent Prompt

Build `tool-demo-script` for verified CLI demo generation from local repo metadata and examples.

# Agent Context Pruner Skill PRD

Status: in-progress

## Problem

Long agent runs accumulate transcript noise, duplicated observations, stale plans, and sensitive snippets. Agents need a local-first way to turn a transcript or run notes into a compact continuation brief with explicit keep/drop reasoning and redaction warnings.

## Users

- Agent builders preparing continuation prompts
- Maintainers reviewing long-running automation logs
- Operators creating safe handoff notes for another model or agent

## MVP

- CLI accepts markdown, JSON transcript arrays, or JSONL message logs
- Produces a JSON and markdown pruning report
- Classifies items as keep, drop, verify, or redact
- Flags likely secrets, credentials, tokens, emails, and phone numbers
- Emits a compact continuation brief with decisions, open risks, and next actions
- Includes a `SKILL.md` describing side-effect boundaries and validation

## Non-Goals

- No model calls in the MVP
- No external account writes
- No destructive transcript edits

## Acceptance

- Fixture-backed tests cover markdown, JSON, JSONL, redaction, and empty input cases
- `npm test`, `npm run check`, `npm run build`, and `npm run smoke` pass locally
- README includes quickstart, examples, limitations, safety notes, and CLI output shape
- Release-candidate PR records verification results

## Classification

Initial target: ship if local tests pass and the CLI produces useful reports from fixtures.

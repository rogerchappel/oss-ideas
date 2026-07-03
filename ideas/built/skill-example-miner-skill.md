# PRD: skill-example-miner-skill

Status: built
Decision: ship

## Scorecard

Total: 84/100
Band: build now
Last scored: 2026-07-04
Scored by: oss-factory-agent-skills

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agent skills often drift because examples are hand-written after the fact. |
| Demand signal | 15/20 | Repeated need across skill packaging, launch notes, and run audits. |
| V1 buildability | 20/20 | Local Markdown/JSON fixture parser plus deterministic report writer. |
| Differentiation | 12/15 | Focuses on reusable skill examples rather than generic transcript summarisation. |
| Agentic workflow leverage | 14/15 | Turns past runs into safer future prompts and validation cases. |
| Distribution potential | 5/10 | Useful to agent builders and skill authors. |

## Pitch

Mine agent run notes, transcripts, and fixtures into reusable skill examples with redaction checks and validation prompts.

## Why It Matters

Good agent skills need realistic examples, but harvesting them manually is slow and easy to contaminate with private data. This skill produces reviewable candidate examples and a redaction checklist before anything is copied into a public skill.

## Qualification

### Pub Test

Can this be explained clearly in one sentence? Yes: it turns completed agent runs into safe, reusable examples for future skill docs.

### Competitors / Adjacent Tools

- Generic transcript summarisers — broad, but not skill-example or redaction oriented.
- Prompt libraries — store examples, but do not mine and validate them from real runs.

### Star / Demand Signal

- Repeated local workflow need from agent skill creation, package hygiene, and launch-material preparation.
- Public agent-skill repos increasingly need fixture-backed examples and safety notes.

### Real Problem

- Skill authors need examples grounded in real workflows without leaking private inputs.
- Agents need a consistent checklist for deciding whether an example is safe and useful.

### V1 Buildability

- Read local Markdown/JSON fixtures.
- Extract task, trigger, inputs, constraints, tool boundaries, verification, and reusable example text.
- Emit Markdown and JSON reports with warnings.

## V1 Scope

- Local-first CLI.
- Fixture-backed parser for Markdown run notes and simple JSON transcripts.
- Redaction pattern checks for emails, tokens, URLs, and explicit private markers.
- Markdown report and JSON output.
- `SKILL.md` describing when agents should use the workflow.

## Out of Scope

- Automatic publishing into live skills.
- Network access or external account writes.
- Perfect PII detection.

## CLI/API Sketch

```bash
skill-example-miner fixtures/run-note.md --format markdown
skill-example-miner fixtures/transcript.json --format json
```

## Verification

- `npm test`
- `npm run check`
- `npm run smoke`

## Agent Prompt

Build `skill-example-miner-skill` as a local-first CLI and reusable agent skill for mining safe examples from completed agent runs.

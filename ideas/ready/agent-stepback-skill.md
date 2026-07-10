# agent-stepback-skill

Status: ready
Lane: agent-skill
Classification target: incubate

## Problem

Long agent runs can drift into tool churn or premature action. Agents need a reusable "step back" checkpoint that turns recent actions, evidence, blockers, and next moves into a compact recovery plan.

## MVP

Build a local-first CLI/library that accepts a run transcript or notes file and produces:

- facts observed
- decisions made
- unresolved blockers
- risky assumptions
- next safe actions
- a short handoff summary

## Inputs

- plain-text or Markdown transcript
- optional `--max-items`
- optional `--format markdown|json`

## Outputs

- deterministic checkpoint report
- JSON structure suitable for another agent to consume
- `SKILL.md` describing when to pause and run the checkpoint

## Safety

The tool must not call external services. It should redact obvious tokens and secrets in generated reports.

## Verification

- transcript fixtures
- redaction tests
- CLI smoke and package import smoke


# Skill Side Effect Ledger

Status: built

Source: cron queue replenishment for oss-factory-agent-skills on 2026-07-15.

Built repo: https://github.com/rogerchappel/skill-side-effect-ledger
Release-candidate PR: https://github.com/rogerchappel/skill-side-effect-ledger/pull/1
Classification: ship

## Summary

Build a local-first agent skill and CLI that extracts declared and observed side effects from an agent run transcript, then creates a compact ledger for approval review.

## Users

- Agents preparing dry-run plans before connector writes.
- Reviewers auditing whether a run touched files, network, messages, or external systems.
- Skill authors documenting side-effect boundaries.

## Problem

Agent workflows often mix planning, local file edits, tool calls, and external actions. Reviewers need a fast way to see what was proposed, what happened, and which actions required approval without reading an entire transcript.

## MVP

- Read markdown or JSONL run logs.
- Detect file writes, shell commands, network calls, message sends, and external connector actions.
- Mark each event as local, external-read, or external-write.
- Emit markdown and JSON ledger outputs.
- Include a `SKILL.md` for agents using the ledger before handoff or PR creation.
- Include tests and fixture logs.

## Safety

The ledger must be read-only and conservative: unknown action types should be warnings, not silently ignored.

## Classification

Build as a standalone public repo. Classify as `ship` if deterministic fixture tests and smoke output pass.

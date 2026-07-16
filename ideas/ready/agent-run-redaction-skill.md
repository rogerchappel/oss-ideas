# Agent Run Redaction Skill

Status: kill/merge
Decision: merge into LogVeil and SecretShape release-candidate work
Updated: 2026-07-16

Outcome: This PRD directly overlapped the existing public `logveil` and
`skill-redaction-audit`/redaction-tool lane. The factory run avoided a duplicate
thin repo and instead improved `logveil` with explicit sanitized-copy writes,
agent `SKILL.md` packaging, package inclusion, tests, and release-candidate PR
evidence.

Merged target: https://github.com/rogerchappel/logveil/pull/21

Source: queue replenishment for oss-factory-agent-skills on 2026-07-16.

## Summary

Build a local-first agent skill that scans agent run logs, tool transcripts, and
release notes for likely secrets, private identifiers, and account-specific
details before the artifact is shared publicly.

## Users

- Agents preparing public OSS PRs from private automation runs.
- Maintainers reviewing generated run summaries.
- Automation lanes that need a preflight privacy check before posting results.

## Problem

Agent logs often mix useful evidence with private paths, user IDs, connector
targets, tokens, and account-specific metadata. Agents need a repeatable
redaction checklist and fixture-backed scanner that warns without modifying the
source artifact by default.

## MVP

- CLI accepts text, markdown, JSON logs, or a directory of run artifacts.
- Detect common secret shapes, local home paths, email addresses, Slack/user IDs,
  GitHub tokens, API key-like strings, and connector target metadata.
- Produce a markdown redaction report with line references and suggested masks.
- Include `SKILL.md`, tests, fixture logs, smoke command, and release-candidate
  docs.

## Safety

The scanner is read-only by default. Any rewrite mode must require explicit
`--write` and emit a before/after diff.

## Classification

Build as a standalone public repo unless a direct overlap with an existing
redaction audit repo is found.

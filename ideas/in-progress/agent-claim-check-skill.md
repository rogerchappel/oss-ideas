# Agent Claim Check Skill

Status: ready

## Summary

Build a local-first agent skill that checks launch copy, posts, repo summaries, and release notes for claims that are unsupported by provided source snippets.

## Problem

Agents often draft confident statements from partial repo context. Roger needs a reusable skill that can be run before publishing content to identify claims that need citations, weaker wording, or removal.

## Users

- Agent builders preparing repo-to-content output
- Maintainers drafting launch material
- Review agents auditing generated posts or release notes

## MVP

- `SKILL.md` describing when to use the skill, required inputs, side-effect boundaries, approvals, examples, and verification
- CLI that accepts a draft markdown file and a JSON source bundle
- Library API that extracts claim-like sentences and classifies them as supported, weak, missing, or unverifiable
- Fixture-backed tests
- Smoke command for sample draft/source inputs
- Release-candidate docs and orchestration notes

## Inputs

- Draft markdown or plain text
- JSON source bundle with `id`, `title`, `text`, and optional `url`
- Optional strictness setting

## Outputs

- Markdown report with claim table, evidence IDs, severity, and suggested rewrite
- JSON report for automation
- Non-zero exit only when `--fail-on missing` or stricter policy is requested

## Safety

The skill is local-first and must not fetch live web pages or modify external accounts. External publication, issue creation, or CRM writes require a separate explicit approval.

## Verification

- `npm test`
- `npm run check`
- `npm run smoke`
- CLI fixture smoke against unsupported launch claims

## Classification

Initial target: ship if the CLI, fixtures, docs, and smoke check are complete.

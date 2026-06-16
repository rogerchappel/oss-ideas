# artifact-evidence-skill

Status: built
Source: cron replenishment for OSS Factory Agent Skills, 2026-06-17
Repo: https://github.com/rogerchappel/artifact-evidence-skill
PR: https://github.com/rogerchappel/artifact-evidence-skill/pull/1
Classification: ship

## Problem

Agents complete work across logs, screenshots, test output, generated files, and PR notes, but evidence is often scattered. A reusable skill should collect local artifact paths and command results into a concise evidence packet for reviewers.

## MVP

- Accept a manifest of files, commands, and notes.
- Validate that referenced local files exist.
- Produce Markdown evidence packets with checks, risks, and missing items.
- Never upload artifacts or call external services.
- Include fixtures and tests for passing, partial, and missing-artifact cases.

## Success

An agent can attach a single generated evidence packet to a PR or handoff without leaking private data or claiming unverified results.

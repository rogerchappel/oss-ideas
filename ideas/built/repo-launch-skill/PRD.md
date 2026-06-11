# PRD: repo-launch-skill

Status: built
Classification: ship

## Summary
A local-first agent skill that converts a repository manifest and README into launch material: release notes, demo scripts, post drafts, readiness gates, and public-safe messaging.

## Users
Open-source maintainers and agents preparing repo launches, release candidates, videos, and announcement posts.

## Problem
Repo launch work is repetitive and easy to overstate. Agents need a structured way to produce launch assets grounded in repository facts with explicit safety checks.

## MVP
- Read a repo manifest and optional README/changelog content.
- Score launch readiness across docs, tests, examples, safety, and packaging.
- Generate a demo script, short/long posts, release notes, and gap checklist.
- Flag unverifiable claims, missing verification commands, and risky external-action language.
- Ship a reusable SKILL.md with side-effect and approval guidance.

## Non-goals
- No publishing, tagging, social posting, or GitHub release creation.
- No scraping private repository data.

## Validation
Fixture-backed tests, CLI smoke command, package import smoke, and release-candidate checklist.

## Build Result

- Repo: https://github.com/rogerchappel/repo-launch-skill
- Release candidate PR: https://github.com/rogerchappel/repo-launch-skill/pull/1
- Built by cron lane: oss-factory-agent-skills on 2026-06-11.

# skill-portability-audit

Status: ready
Source: cron replenishment for OSS Factory Agent Skills, 2026-06-17

## Problem

Agent skills drift toward one machine, one shell, or one tool stack. Before sharing a skill publicly, maintainers need a quick local audit for portability risks such as absolute paths, hidden credentials, unavailable commands, and ambiguous side effects.

## MVP

- Scan `SKILL.md`, docs, and examples for portability and safety risks.
- Report absolute paths, environment assumptions, external-write verbs, missing verification, and unclear approvals.
- Provide JSON and Markdown output for automation and PR review.
- Include fixtures for clean, warning, and failing skills.

## Success

Another maintainer can run one command before publishing a skill and receive an actionable portability report.

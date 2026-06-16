# agent-runbook-skill

Status: ready
Source: cron replenishment for OSS Factory Agent Skills, 2026-06-17

## Problem

Agents often receive operational runbooks, incident notes, or recurring process docs that are written for humans. They need a local-first skill that can turn those notes into bounded agent actions, checks, approvals, and evidence requirements without performing live external writes.

## MVP

- Parse Markdown runbooks into ordered action cards.
- Classify each action as inspect, local-change, external-read, external-write, or approval-required.
- Emit a dry-run plan, validation checklist, and handoff summary.
- Provide a `SKILL.md` that tells agents when to use the skill and where side effects stop.
- Include fixtures for release, incident, and data-cleaning runbooks.

## Success

Another agent builder can run the CLI on a fixture and get a useful action plan with safety boundaries and verification steps.

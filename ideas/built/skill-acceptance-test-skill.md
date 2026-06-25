# Skill Acceptance Test Skill

Status: built
Classification: ship
Repo: https://github.com/rogerchappel/skill-acceptance-test-skill
PR: https://github.com/rogerchappel/skill-acceptance-test-skill/pull/1

## Summary

Build a local-first agent skill and CLI that turns a skill contract plus fixtures into an acceptance checklist and runnable JSON assertions for validating whether an agent skill is ready to publish.

## Problem

Reusable agent skills often describe workflows but lack repeatable acceptance tests. Maintainers need a small harness that checks required sections, fixture coverage, side-effect boundaries, and verification evidence before a skill is promoted.

## Users

- Skill authors preparing public OSS skill repos
- Reviewers checking release-candidate skill packages
- Agents running regression checks after prompt or docs edits

## MVP

- `SKILL.md` explaining when to use the skill and validation workflow
- CLI that reads a `SKILL.md`, contract JSON, and fixture directory
- Machine-readable findings plus human Markdown summary
- Required-section, fixture, and command-evidence checks
- Fixture-backed tests and smoke command
- Release-candidate notes and orchestration docs

## Safety

The harness is read-only by default. It must not execute arbitrary shell commands from skill files; command evidence is checked as text unless a caller explicitly runs their own verification command outside the tool.

## Classification Target

ship

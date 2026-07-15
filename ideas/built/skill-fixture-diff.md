# Skill Fixture Diff

Status: built

Source: cron queue replenishment for oss-factory-agent-skills on 2026-07-15.

Built repo: https://github.com/rogerchappel/skill-fixture-diff
Release-candidate PR: https://github.com/rogerchappel/skill-fixture-diff/pull/1
Classification: ship

## Summary

Build a local-first agent skill and CLI that compares expected and actual skill-run fixtures, classifies differences by severity, and emits a review-ready markdown report.

## Users

- Agent builders validating skill behavior across fixture updates.
- Maintainers reviewing prompt, parser, or connector changes before publishing.
- Automation lanes that need a deterministic smoke gate for fixture-backed skills.

## Problem

Agent skills often rely on example transcripts, JSON tool plans, and markdown outputs. Small drift can be acceptable, but regressions in required sections, side-effect boundaries, or approval wording should block release. Existing diff tools are too generic for skill artifacts.

## MVP

- Parse fixture pairs from a directory.
- Compare JSON and markdown fixtures with skill-aware rules.
- Classify changes as pass, warn, or fail.
- Generate markdown and JSON reports.
- Provide a `SKILL.md` explaining when an agent should run the check.
- Include fixture-backed tests and a smoke command.

## Safety

The tool must be local-only, avoid network calls, and never mutate source fixtures unless an explicit future `--update` mode is implemented.

## Classification

Build as a standalone public repo. Classify as `ship` if the CLI, tests, docs, and smoke report all pass.

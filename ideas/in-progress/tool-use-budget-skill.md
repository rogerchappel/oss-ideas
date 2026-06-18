# Tool Use Budget Skill

Status: ready

## Summary

Build a local-first planning skill that turns an agent task into a practical tool, time, token, and side-effect budget before a run begins.

## Problem

Long agent runs drift when they do not make budget constraints explicit. Roger needs a reusable skill that helps agents plan bounded work, choose validation commands, and surface approval points before touching external systems.

## Users

- Coding agents handling repo maintenance
- Research agents that need time-boxed browser or connector usage
- Review agents that must explain what they will verify

## MVP

- `SKILL.md` with use cases, required inputs, side-effect boundaries, approvals, examples, and validation workflow
- CLI that reads a task brief and optional repo profile
- Library API that emits a staged run budget with tool allowances, verification gates, and stop conditions
- Fixture-backed tests
- Smoke command for a coding-task brief
- Release-candidate docs and orchestration notes

## Inputs

- Task brief markdown or plain text
- Optional JSON repo profile with language, package manager, test commands, and risk flags
- Optional maximum minutes and maximum external writes

## Outputs

- Markdown run budget
- JSON budget for orchestration systems
- Warnings for ambiguous approvals, live-account writes, missing verification, or excessive scope

## Safety

The skill must be dry-run only. It may recommend approval gates but must not execute commands, write to external accounts, or change repository files.

## Verification

- `npm test`
- `npm run check`
- `npm run smoke`
- CLI fixture smoke for a constrained repo task

## Classification

Initial target: ship if the CLI, fixtures, docs, and smoke check are complete.

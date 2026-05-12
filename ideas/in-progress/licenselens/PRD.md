# licenselens PRD

Status: in-progress

## Summary

`licenselens` scans package metadata and license files to produce a readable local dependency license inventory with policy checks. It answers “can I ship this?” without pretending to be a lawyer. ⚖️

## Problem

Small OSS projects often lack a quick way to review dependency licenses before release. Existing tools can be heavyweight, ecosystem-specific, or hard to read.

## Users

- OSS maintainers doing release readiness checks.
- Agentic release workflows that need a deterministic license gate.
- Developers auditing transitive package metadata locally.

## Goals

- Scan Node package-lock/pnpm-lock plus package metadata in V1.
- Classify licenses against configurable allow/warn/deny policies.
- Generate Markdown and JSON reports.
- Surface unknown/missing license files clearly.
- Include fixtures for permissive, copyleft, unknown, and mixed cases.

## Non-goals

- Legal advice.
- Perfect SPDX interpretation for every ecosystem.
- Network package registry lookups in V1.

## V1 requirements

- TypeScript CLI commands: `scan`, `check`, `report`.
- Policy config `licenselens.config.json`.
- SPDX-ish normalization for common expressions.
- Node lockfile/package metadata reader.
- Fixture-backed tests and smoke script.

## Safety

- Local files only; no telemetry or registry calls.
- Reports include confidence and unknowns rather than hiding ambiguity.

## Attribution

Inspired by license-checker style tools and release readiness checklists; reframed as a small local-first policy lens for OSS agents and maintainers.

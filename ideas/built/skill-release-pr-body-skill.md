# Skill Release PR Body Skill

Status: built

Source: queue replenishment for oss-factory-agent-skills on 2026-07-16.

Built: 2026-07-16 by oss-factory-agent-skills.
Repository: https://github.com/rogerchappel/skill-release-pr-body-skill
Release candidate PR: https://github.com/rogerchappel/skill-release-pr-body-skill/pull/1

## Summary

Build a local-first agent skill that turns release evidence, docs status, and
commit groups into a clear release-candidate PR body for agent-skill repos.

## Users

- Agents opening release-candidate PRs.
- Maintainers who want consistent verification and safety sections.
- OSS automation lanes that need PR bodies without overclaiming readiness.

## Problem

Release PRs vary in quality. Some omit verification, some hide risks, and some
mix generated marketing copy with release facts. Agents need a structured PR
body generator that is grounded in local evidence and keeps maintainer review
front and center.

## MVP

- CLI ingests a release dossier, git log, package scripts, docs checklist, and
  optional risk notes.
- Generates markdown sections for summary, commit groups, verification, safety,
  known limits, and reviewer checklist.
- Supports fixture mode and snapshot tests.
- Include `SKILL.md`, docs, smoke command, and release-candidate notes.

## Safety

The tool only prints or writes a local markdown file. It must not open PRs,
push branches, merge, tag, publish, or call external services.

## Classification

Build as a standalone public repo or merge with repo-release-dossier-skill if
implementation overlap is too high.

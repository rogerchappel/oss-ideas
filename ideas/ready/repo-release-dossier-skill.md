# Repo Release Dossier Skill

Status: ready

Source: cron queue replenishment for oss-factory-agent-skills on 2026-07-15.

## Summary

Build a local-first agent skill that collects release evidence from a repository into a concise dossier: changed files, verification commands, open risks, docs status, and release-candidate notes.

## Users

- Agents preparing release-candidate PRs.
- Maintainers deciding whether a small OSS repo is ready to ship.
- Automation lanes that need a standard release-readiness summary.

## Problem

Release-candidate PRs often miss one of the important pieces: exact verification, docs state, limitations, or safety notes. Agents need a reusable way to assemble the evidence without over-writing maintainer judgment.

## MVP

- Inspect git status, recent commits, package scripts, docs, and test evidence.
- Generate a markdown release dossier with pass/warn/fail sections.
- Support fixture mode so tests do not depend on the caller's repo.
- Include `SKILL.md`, tests, smoke command, and release-candidate docs.

## Safety

The tool is read-only by default and must not tag, publish, merge, or push.

## Classification

Build as a standalone public repo or merge into a release-readiness repo if overlap is too high.

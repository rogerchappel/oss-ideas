# Connector Permission Diff Skill

Status: in-progress

## Summary

Build a local-first agent skill and CLI that compares a proposed connector/action manifest against an approval policy, then emits a dry-run permission diff with required approvals, denied actions, and evidence that an agent can paste into a review.

## Problem

Agents frequently prepare connector calls across CRM, project-management, content, and messaging tools. Reviewers need a fast way to see what changed between the requested action surface and an allowed policy before any external write happens.

## Users

- Agent builders packaging connector workflows
- Operators reviewing proposed connector permissions
- Maintainers preparing safe demo or launch workflows

## MVP

- `SKILL.md` explaining when to use the skill, side-effect boundaries, and approval workflow
- CLI that accepts a connector manifest and policy file
- JSON and Markdown output modes
- Deny-by-default policy behavior
- Fixture-backed tests for allowed, approval-required, and denied actions
- Smoke command and validation script

## Safety

The tool must not call external services or mutate accounts. It only reads local fixture files and writes reports when explicitly requested by output redirection.

## Classification Target

ship

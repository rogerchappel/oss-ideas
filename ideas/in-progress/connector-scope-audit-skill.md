# Connector Scope Audit Skill

Status: in-progress

## Summary

Build a local-first agent skill that audits connector/action plans before execution and reports whether requested scopes, data classes, and side effects match the user's stated intent.

## User

Agents preparing connector-backed actions for CRM, project-management, messaging, document, or repo systems where dry-run approval evidence is required.

## MVP

- CLI that reads a connector action plan JSON file.
- Normalizes requested scopes, data touched, write actions, and approval notes.
- Produces a risk report with pass/warn/block decisions.
- Supports policy fixtures for allowed scopes and required approvals.
- Includes tests, examples, smoke command, and skill usage instructions.

## Safety

The skill must only inspect local fixture or plan files. It must not call live connectors, send messages, edit remote records, or grant permissions.

## Acceptance

- `npm test`, `npm run check`, `npm run build`, and `npm run smoke` pass.
- `SKILL.md` explains approval gates and how to record evidence.
- Release-candidate PR includes verification results and known limitations.

# skill-approval-brief-skill

Status: built
Created: 2026-07-13
Source: oss-factory-agent-skills queue replenishment

## Summary

Build a local-first agent skill that turns a proposed external action into a concise approval brief with scope, evidence, rollback, risk level, and exact user decision text.

## Problem

Agents often ask for approval with vague wording. Operators need approval prompts that make side effects explicit, cite evidence, name the target system, and preserve a clear audit trail without performing the action.

## Users

- Agents preparing connector writes, posts, emails, CRM updates, or project-management changes.
- Humans approving or rejecting external side effects.
- Maintainers auditing whether approval prompts were specific enough.

## MVP

- CLI accepts a JSON action proposal and optional evidence paths.
- Validates required fields: actor, target system, action, payload summary, impact, rollback, and approval text.
- Classifies risk as read-only, draft-only, write-after-approval, or forbidden.
- Emits markdown and JSON approval briefs.
- Includes a `SKILL.md` with approval boundaries and examples.

## Safety

- The tool never calls external services.
- Forbidden actions return blocked briefs and non-zero exit codes.
- Payload previews are truncated by default and can redact configured keys.
- Approval text must be explicit and cannot be inferred from vague phrases.

## Verification

- Fixture-backed tests for valid briefs, missing fields, forbidden actions, truncation, and redaction.
- CLI smoke for both approval-required and blocked examples.
- Package/import smoke.
- Release-candidate notes covering limitations and non-goals.

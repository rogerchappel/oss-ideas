# PRD: connector-action-stub-skill

Status: built
Decision: build now
Updated: 2026-07-08
Repo: https://github.com/rogerchappel/connector-action-stub-skill

## Pitch

Generate local dry-run stubs, mock responses, and approval checklists from connector action manifests so agents can rehearse external actions before touching live services.

## Source Attribution

Original OSS Factory idea from connector-routing and action-dryrun workflows across Roger's public agent tooling repos. It is influenced by contract-test fixtures and MCP connector manifests, but no external implementation is copied.

## Problem

Agents need to plan email, CRM, project-management, and messaging actions without accidentally writing to live accounts. Connector maintainers need a repeatable way to expose action shapes, examples, approval boundaries, and deterministic mock responses.

## V1 Scope

- CLI: `connector-action-stub plan <manifest>`, `connector-action-stub fixture <manifest>`, and `connector-action-stub skill <manifest>`.
- Accept JSON connector manifests with actions, required scopes, side effects, and sample inputs.
- Emit dry-run plans, mock response fixtures, and a SKILL.md-ready usage page.
- Flag missing approval notes, side-effect classes, scopes, and idempotency keys.
- Include fixture-backed tests and smoke validation.
- Default commands are local-only and do not call live connectors.

## Out of Scope

- Executing connector actions.
- Handling credentials or tokens.
- Generating SDKs for production use.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, and `bash scripts/validate.sh`.

## Factory Outcome 2026-07-08

Decision: ship
Repo: https://github.com/rogerchappel/connector-action-stub-skill
Release candidate PR: https://github.com/rogerchappel/connector-action-stub-skill/pull/1
Outcome: Built connector action dry-run stub generator with plan, fixture, skill-guide outputs, tests, SKILL.md, and release-candidate PR.

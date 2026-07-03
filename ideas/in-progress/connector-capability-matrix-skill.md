# Connector Capability Matrix Skill

Status: in-progress

## Summary

Build a local-first agent skill that compares requested connector actions against declared connector capabilities, permissions, and approval requirements before an agent touches an external system.

## Target Users

- Agents planning CRM, project-management, messaging, and file connector workflows
- Tool maintainers reviewing permission gaps
- Operators who want dry-run capability evidence before enabling connector writes

## MVP

- CLI reads a capability manifest and an action-plan fixture
- Library API returns allowed actions, denied actions, missing scopes, and approval notes
- Fixture-backed tests cover allowed plans, missing scopes, write approvals, and unknown connectors
- `SKILL.md` documents side-effect boundaries and approval requirements

## Safety

The tool must not call live connectors or mutate remote accounts. It only evaluates fixture or manifest input and produces a dry-run report.

## Release Candidate Bar

- Useful README quickstart
- Product docs and orchestration docs
- Smoke command and tests
- Public repo under `rogerchappel/connector-capability-matrix-skill`


# agent-action-simulator

Status: in-progress

## Summary

Build a local-first agent skill that simulates planned external actions from a connector/tool trace and produces a reviewer-friendly dry-run report with approval boundaries.

## Problem

Agents often prepare connector actions such as CRM updates, project-management changes, or outbound messages. Before a live write, maintainers need a compact simulator that explains intended side effects, risky fields, missing approvals, and rollback notes from fixture data.

## Users

- Agents preparing connector action plans.
- Humans reviewing dry-run action batches.
- Skill authors testing whether approval policies are encoded clearly.

## MVP

- CLI accepts an action-plan JSON file and an approval-policy JSON file.
- Classifies each action as allowed, needs approval, blocked, or malformed.
- Produces markdown and JSON summaries.
- Includes a reusable JS library API.
- Keeps all behavior deterministic and fixture-backed.

## Safety

- No live connector calls.
- No credential loading.
- Explicitly treats unknown action types as blocked.
- Output includes approval reasons and fields that caused the classification.

## Verification

- Tests cover allowed, approval-required, blocked, malformed, and unknown actions.
- CLI smoke command runs against fixtures.
- Release-candidate checklist records dry-run guarantees and limitations.

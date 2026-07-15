# connector-data-minimizer-skill

Status: ready
Type: agent-skill
Priority: high

## Problem

Agents preparing connector actions often collect or request more fields than the action needs. That increases privacy risk, makes approvals harder to review, and creates noisy dry-run plans.

## Users

- Agent builders designing connector workflows
- Reviewers approving external actions
- Maintainers writing side-effect boundaries for skills

## MVP

Build a local-first CLI and library that reads an action fixture describing requested fields, required fields, optional fields, approval mode, and destination. It should emit a minimization report that identifies excessive fields, missing required fields, redaction candidates, and an approval-ready summary.

## Inputs

- JSON action fixture
- Optional policy fixture with allowed fields and sensitive field names

## Outputs

- Markdown minimization report
- JSON report for downstream checks
- Non-zero exit for unsafe action plans when `--strict` is enabled

## Safety

No live connector calls. The tool must operate on fixtures and dry-run plans only. It must make approval recommendations but never perform external writes.

## Acceptance

- Includes `SKILL.md`, `docs/PRD.md`, `docs/TASKS.md`, `docs/ORCHESTRATION.md`, and release-candidate notes
- Includes fixture-backed tests and a smoke command
- CLI supports markdown and JSON output
- Report includes minimal field set, extra fields, missing fields, sensitive fields, and approval recommendation


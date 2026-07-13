# approvaldrift

Status: in-progress

## Summary

Build a local-first agent skill that compares a planned action transcript against a policy file and reports approval-boundary drift before an agent touches external systems.

## User Problem

Agent runs often include mixed local work, dry-run planning, and proposed external writes. Reviewers need a lightweight checker that turns a transcript or action plan into a clear approval ledger so risky actions can be held for explicit approval.

## MVP

- CLI accepts a Markdown transcript/action plan and a YAML or JSON approval policy.
- Extracts file writes, shell commands, network calls, message sends, GitHub writes, package publishes, and destructive operations.
- Classifies each action as allowed, needs approval, or forbidden.
- Emits JSON and Markdown reports with evidence lines.
- Includes fixtures and tests covering safe local work, message sends, GitHub repo writes, and forbidden destructive commands.
- Includes `SKILL.md` for agent use, side-effect boundaries, and verification.

## Safety

The tool is analysis-only and must never execute the actions it reads. It should prefer conservative classification when uncertain.

## Classification Target

ship

# Agent Handoff Contract Skill

Status: ready

## Summary

Build a reusable agent skill and CLI that validates agent-to-agent handoff notes against required inputs, outputs, ownership, approval boundaries, blockers, and verification evidence.

## Why now

Roger's agentic workflows increasingly involve delegated research, implementation, review, and launch work. Handoffs can lose context, omit approvals, or blur responsibility. A portable contract checker gives agents a repeatable local gate before asking another agent or human to continue.

## Users

- Agents delegating implementation, review, launch, or connector-routing work
- Operators who need concise, auditable handoff packets
- Maintainers who want fixture-backed checks for readiness, ownership, and side-effect limits

## MVP

- CLI that reads Markdown or JSON handoff notes
- Rule engine for objective, current state, owner, inputs, expected outputs, blockers, approvals, side-effect limits, and verification evidence
- Deterministic pass/warn/fail report in JSON and Markdown
- Fixture-backed tests for complete, risky, and incomplete handoffs
- `SKILL.md` explaining use, tools/inputs, approvals, examples, and validation workflow

## Safety

- Local-only by default
- Never sends messages, creates sessions, writes tickets, or touches external systems
- Treats unclear ownership, missing approval boundaries, and hidden blockers as failures

## Required project artifacts

- `docs/PRD.md`
- `docs/TASKS.md`
- `docs/ORCHESTRATION.md`
- `SKILL.md`
- README with quickstart, examples, limitations, and safety notes
- CLI smoke script and fixture-backed tests

## Classification Criteria

- `ship`: catches fixture failures and produces useful handoff reports
- `incubate`: useful checklist but needs richer adapters
- `kill/merge`: duplicates run-audit or output-gate repos without a distinct handoff contract

# Skill Intake Triage Skill

Status: built
Classification: incubate
Repo: https://github.com/rogerchappel/skill-intake-triage-skill
PR: https://github.com/rogerchappel/skill-intake-triage-skill/pull/1

## Summary

Build a local-first agent skill that turns a freeform user request plus a skill catalog into a small, auditable intake decision: use skill, ask for missing input, decline unsafe action, or proceed without a skill.

## Target Users

- Agent builders maintaining reusable skill catalogs
- Operators who need consistent skill routing before a run starts
- OSS maintainers packaging skills for other agents

## MVP

- CLI accepts a request file and a skill catalog fixture
- Library API returns matched skill candidates, required inputs, safety notes, and a recommended next action
- Fixture-backed tests cover clear match, missing input, no match, and unsafe side-effect language
- `SKILL.md` documents when to use the skill, boundaries, approvals, examples, and validation

## Safety

The tool must be read-only. It should never install, apply, approve, or invoke a skill. It only produces a triage report and flags when human confirmation is required.

## Release Candidate Bar

- Useful README quickstart
- Product docs and orchestration docs
- Smoke command and tests
- Public repo under `rogerchappel/skill-intake-triage-skill`

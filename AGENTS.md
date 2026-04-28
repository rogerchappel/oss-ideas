# Repository Agent Guide
Version: 2026-04-29

## Purpose

This repository is the open-source idea bank for Roger's OSS sprint.

It exists to collect, triage, and scope open-source project ideas into agent-ready PRDs.

## Repository Type

Personal OSS documentation repository.

## Default Mode

Work on a branch unless explicitly told otherwise.

Use atomic commits.

Keep PRs reviewable.

Verify before completion.

Return a review pack.

Do not merge without explicit human approval.

## Repo Layout

- `ideas/backlog/` - rough ideas that are not ready for agents
- `ideas/ready/` - scoped PRDs that are ready to build
- `ideas/built/` - implemented ideas where a repo exists or V1 has shipped
- `docs/` - sprint strategy, lifecycle, and operating notes
- `templates/` - reusable templates inherited from the OSS template
- `.github/` - issue templates, PR templates, and CI workflows
- `scripts/` - repository validation scripts

## Commands

Smoke test:

```bash
git diff --check
```

Template validation:

```bash
scripts/validate-template.sh
```

## Work Policy

Before editing, report:

1. objective
2. expected blast radius
3. files likely to change
4. commit plan
5. verification plan
6. risk level

Commit plan format:

```md
- Commit 1: `type(scope): title`
  - Intent:
  - Files:
  - Verification:
- Commit 2: `type(scope): title`
  - Intent:
  - Files:
  - Verification:
```

Before the final commit series, update the commit plan based on the actual diff.

## Hard Commit Gate

Before creating any commit, inspect:

```bash
git diff --stat
git status --short
```

If the staged or unstaged diff touches more than 8 files, stop and produce a commit split plan before committing.

A single commit touching more than 8 files is only allowed when one of these is true:

- initial repo scaffold
- generated lockfile/vendor output required by one change
- mechanical rename/move
- formatting-only pass
- explicitly approved by the human

Otherwise, split the diff into multiple atomic commits.

Do not finish a task with one large commit if the diff contains multiple reviewable intents.

If a PR touches more than 8 files and has only one commit, assume the commit history is wrong and split it before returning the review pack.

## Commit Policy

Use Conventional Commits.

One commit equals one reviewable intent.

File count is not the commit boundary.

Do not default to one commit per file. Split by reviewable intent first, and split by file only when each file can be reviewed, reverted, and verified independently.

Split commits when the work introduces independently reviewable parts, such as:

- new idea PRDs
- idea lifecycle changes
- repository policy changes
- docs strategy changes
- templates
- CI/config changes
- generated artifacts

Keep related files together only when splitting would create artificial commits that cannot be understood or verified independently.

Do not mix:

- new idea PRDs and unrelated policy edits
- lifecycle moves and unrelated docs rewrites
- template changes and idea content
- CI changes and documentation content changes
- formatting-only changes and content changes
- generated files and unrelated hand-written files

Prefer 3 clean commits over 1 mixed commit.

Prefer 1 clean commit over 5 artificial commits.

## Commit As You Go

Do not wait until the end of a task to make one large commit.

After each independently reviewable change unit:

1. run the smallest relevant verification
2. stage only that unit
3. commit it
4. continue to the next unit

If you are about to edit a new idea, docs topic, CI workflow, config file, or template group, consider committing the previous unit first.

## Idea Lifecycle Policy

Use the lifecycle folders as the source of truth:

```text
ideas/backlog/<project-name>/PRD.md
ideas/ready/<project-name>/PRD.md
ideas/built/<project-name>/PRD.md
```

Move an idea from `backlog` to `ready` only when it has:

- clear pitch
- why it matters
- V1 scope
- out-of-scope list
- verification requirements
- agent prompt

Move an idea from `ready` to `built` only when:

- public or local repo exists
- V1 implementation is committed
- README exists
- basic verification passes or failure is documented
- follow-up work is captured

## PR Policy

Good PRs:

- can be reviewed in under 15 minutes
- have a clear summary
- have focused commits
- include verification
- explain risk
- include follow-up tasks if incomplete

Bad PRs:

- broad rewrites
- unrelated formatting churn
- mixed policy/template/idea changes
- no verification
- vague summary

Do not merge without explicit human approval.

## Stop Before Touching

Ask before changing:

- licensing
- security policy
- public repo visibility
- GitHub Actions that publish or deploy
- secrets or environment variables
- destructive commands
- broad template structure
- existing idea status from `built` back to another state

Never commit secrets. Never delete idea history unless explicitly instructed.

## Review Pack

Every completed task must return:

```md
## Review Pack
Repo:
Branch:
PR:
Task:
Status: done / blocked / needs review
Summary:
Commits:
Files changed:
Verification:
Risk level:
Rollback plan:
Human decision needed:
Next recommended task:
```

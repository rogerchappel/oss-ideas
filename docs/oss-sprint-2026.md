# OSS Sprint 2026

## Goal

Create a large body of useful open-source projects while developing a repeatable workflow for high-throughput, high-quality agentic software development.

Near-term target:

- 5-6 scoped OSS projects per day when possible
- 500-1,000 useful commits/day as a stretch workflow target
- Quality gates on every repo
- Agents working in isolated, reviewable lanes

## Scoreboard

Track:

- repos created
- commits/day
- merged PRs/day
- tests/builds passing
- broken build rate
- useful projects shipped
- reusable workflow improvements discovered

Raw commit count is not the scoreboard by itself. Verified checkpoint commits are.

## Existing Foundation

- `agentic-oss-template`: repo hygiene/template layer
- `branchbrief`: branch -> review brief
- `repoctx`: repo -> context pack
- `taskbrief`: messy input -> task briefs
- `agentic-team-playbook`: operating model/docs

## Factory Pipeline

```text
repoforge -> repoctx -> taskbrief -> agentlane -> agents/worktrees -> atomcommit -> qualitygate -> branchbrief -> prpack -> ossmeter
```

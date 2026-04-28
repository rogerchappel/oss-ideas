# oss-ideas

A public idea bank for open-source projects around agentic engineering, high-throughput software teams, and developer tooling.

This repo turns rough OSS ideas into scoped PRDs that agents can build from.

## Purpose

Roger is running a 70-day OSS sprint. The goal is not just to create many repos, but to discover a repeatable workflow for high-quality, high-throughput open-source shipping with AI agents.

This repository is the source of truth for:

- open-source project ideas
- project PRDs
- agent-ready V1 scopes
- build order
- naming options
- quality gates
- follow-up improvements

## Idea Structure

Ideas move through three lifecycle folders:

```text
ideas/backlog/<project-name>/PRD.md  # rough idea, not ready for agents
ideas/ready/<project-name>/PRD.md    # scoped and ready to build
ideas/built/<project-name>/PRD.md    # repo exists or V1 has shipped
```

Optional supporting files can be added later:

```text
ideas/<project-name>/README.md
ideas/<project-name>/agent-prompt.md
ideas/<project-name>/research.md
```

## Qualification

Ideas must pass the [Idea Qualification Test](docs/idea-qualification.md) before moving to `ready`.

The core checks are:

- pub test: can a smart developer understand it quickly?
- competitor test: are similar or adjacent tools already used?
- star/demand signal: are there stars, issues, forks, posts, or discussions?
- real problem test: has Roger or someone external clearly hit this pain?
- V1 buildability: can an agent build a useful local-first version quickly?

Use [`templates/idea-prd.md`](templates/idea-prd.md) for new ideas.

## Current Ideas

- [repoforge](ideas/ready/repoforge/PRD.md) — one-command OSS repo factory
- [atomcommit](ideas/ready/atomcommit/PRD.md) — messy diff to atomic commit plan
- [qualitygate](ideas/ready/qualitygate/PRD.md) — portable verification/report gate
- [prpack](ideas/ready/prpack/PRD.md) — PR handoff pack generator
- [ossmeter](ideas/ready/ossmeter/PRD.md) — OSS sprint velocity and quality scoreboard
- [agentlane](ideas/ready/agentlane/PRD.md) — safe parallel agent work lanes

## Principles

- Local-first by default
- No hidden network calls
- No hidden credential use
- Deterministic output before LLM output
- Small, reviewable commits
- Clear verification gates
- Useful projects over vanity commit count

## License

MIT

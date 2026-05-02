# The Developer Learning Stash

Status: in-progress

## Scorecard

Total: 84/100
Band: strong
Last scored: 2026-05-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Free programming resources are scattered and hard to filter by quality, license, level, and freshness. |
| Demand signal | 19/20 | EbookFoundation/free-programming-books is one of GitHub's most popular educational repo archetypes. |
| V1 buildability | 17/20 | A smaller curated catalog with schema, validation, and generated pages is buildable today. |
| Differentiation | 12/15 | Focus on agentic engineering, OSS maintainership, CLI/tool building, and modern TypeScript/Node workflows. |
| Agentic workflow leverage | 11/15 | Helps humans and agents choose learning materials for new project domains. |
| Distribution potential | 8/10 | Educational resource lists are highly shareable. |

## Pitch

A focused catalog of genuinely useful free learning material for modern software builders — less “everything on the internet”, more annotated paths through agentic engineering, tooling, testing, OSS, and maintainership.

## Why It Matters

A great profile benefits from public-good repos. A carefully maintained learning catalog can attract stars while helping the community.

## Attribution / Inspiration

Inspired by the broad free-programming-resources category represented by EbookFoundation/free-programming-books. Do not copy their lists, taxonomy, wording, or bulk data. Include attribution to the category inspiration.

## V1 Scope

- `data/resources.json` with schema for title, url, type, topic, level, language, license/free status, notes.
- Generated README sections and optional static markdown pages.
- Validator for duplicates, URL shape, required metadata, alphabetical/topic ordering.
- Initial focused catalog around agentic engineering, TypeScript CLIs, testing, OSS maintainership, Git, security basics, and docs.
- Contribution guide with quality bar and copyright/linking rules.

## Out of Scope

- Mirroring or hosting ebooks.
- Bulk copying another resource list.
- Automated web crawling.

## Verification

- Tests for schema, generation, sorting, duplicate detection, and smoke generation.
- `npm test`, `npm run build`, `npm run smoke`, validation script.

## Agent Prompt

Build `developer-learning-stash` with the public title “The Developer Learning Stash” and a GitHub description like: “Annotated free learning paths for agentic engineering, developer tooling, testing, docs, and OSS maintainership.” Use StackForge, schema-driven generation/validation, docs, tests, smokes, publish, metadata, branch protection.

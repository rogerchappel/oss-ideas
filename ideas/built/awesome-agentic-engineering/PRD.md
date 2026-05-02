# Awesome Agentic Engineering

Status: in-progress

## Scorecard

Total: 88/100
Band: strong
Last scored: 2026-05-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Developers need a trustworthy map of agentic engineering tools, patterns, safety practices, and examples. |
| Demand signal | 19/20 | Awesome lists are one of GitHub's strongest repo archetypes; sindresorhus/awesome is the canonical category leader. |
| V1 buildability | 19/20 | A curated list with validation tooling, contribution templates, and metadata can be built today. |
| Differentiation | 13/15 | Focus on agentic engineering, local-first OSS factories, verification loops, and practical operator workflows. |
| Agentic workflow leverage | 12/15 | Helps agents and humans discover better building blocks. |
| Distribution potential | 7/10 | Awesome-list format is inherently shareable and star-friendly. |

## Pitch

A carefully curated field guide to agentic engineering — practical tools, patterns, safety habits, evaluation loops, and real-world examples for people building with coding agents.

## Why It Matters

Roger is building a public ecosystem around agents and developer tooling. A high-quality awesome list becomes an anchor repo: discoverable, collaborative, and a signal of taste.

## Attribution / Inspiration

Inspired by the awesome-list format and the category represented by sindresorhus/awesome. Do not copy the list contents wholesale, branding, wording, or structure. Use original taxonomy and cite the awesome-list tradition.

## V1 Scope

- Polished README with categories for agentic engineering.
- `data/resources.json` as source of truth.
- Validation CLI/script for links, duplicates, category order, descriptions, and contribution rules.
- Contribution guide, code of conduct, issue templates, and curation policy.
- Initial curated entries from public, well-known projects plus Roger's own tools where relevant.
- Static badge/table generation if useful.

## Out of Scope

- Scraping GitHub at scale.
- Low-quality repo dumping.
- Copying existing awesome list entries in bulk.

## Verification

- Tests/validation for resource schema, duplicate detection, category ordering, and README generation.
- `npm test`, `npm run check`, `npm run build`, `npm run smoke`, `bash scripts/validate.sh` where present.

## Agent Prompt

Build `awesome-agentic-engineering` with the public title “Awesome Agentic Engineering” and a GitHub description like: “A practical map of tools, patterns, safety checks, and workflows for building software with coding agents.” Use StackForge, docs, validation tooling, meaningful commits, publish to GitHub, set metadata, protect main.

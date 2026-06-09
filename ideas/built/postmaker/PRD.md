# PRD: postmaker

Status: built
Decision: ship

Repository: https://github.com/rogerchappel/postmaker
Release candidate PR: https://github.com/rogerchappel/postmaker/pull/4
Built: 2026-06-10

## Scorecard

Total: 82/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Daily social drafting is repetitive and quality-sensitive. |
| Demand signal | 16/20 | Founders and maintainers constantly repurpose work into posts. |
| V1 buildability | 18/20 | Local Markdown/JSON generation is straightforward. |
| Differentiation | 12/15 | Grounded post packs with claim checks. |
| Agentic workflow leverage | 13/15 | Gives agents a safe content creation routine. |
| Distribution potential | 6/10 | Broad enough for public use. |

## Pitch

Generate a pack of grounded social posts from a repo, changelog, article, or product brief.

## Why It Matters

Promotion work should be fast, but unsupported claims damage trust. A post maker that requires evidence is more useful than generic prompt output.

## V1 Scope

- Accept local source files.
- Generate LinkedIn, X, short caption, and launch-note drafts.
- Mark each claim as sourced, inferred, or needs review.
- Support tone presets without pretending to be the user.

## Out of Scope

- Posting through APIs.
- Scraping private profiles.

## CLI/API Sketch

```bash
postmaker from-repo ./repo --platform linkedin --platform x --out posts/
postmaker check posts/launch.md --source ./repo
```

## Verification

- Snapshot tests over fixture source packs.
- Claim-check tests for invented metrics.

## Agent Prompt

Build `postmaker` as a grounded social draft generator with local source inspection and explicit claim status.

## Factory Result

Shipped as a public local-first CLI and agent skill with fixture-backed tests, claim-status generation, evidence checks, release-candidate docs, and protected `main`.

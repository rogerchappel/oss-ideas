# PRD: job-search-skill

Status: ready
Decision: ready

## Scorecard

Total: 79/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Job search workflows are repetitive and research-heavy. |
| Demand signal | 17/20 | Large audience; many people use AI for applications. |
| V1 buildability | 15/20 | Start local-first with saved postings and application materials. |
| Differentiation | 11/15 | Evidence-grounded fit analysis and tracking. |
| Agentic workflow leverage | 12/15 | Useful agent skill with clear boundaries. |
| Distribution potential | 7/10 | Broad public appeal. |

## Pitch

A local job-search skill that scores saved roles, maps evidence from a resume, and drafts application plans.

## Why It Matters

People do not need more generic cover letters. They need structured fit analysis, missing evidence, and a tracker.

## V1 Scope

- Ingest local job descriptions and resume/profile Markdown.
- Score role fit with evidence citations.
- Generate application checklist, questions, and draft cover note.
- Maintain local application tracker.

## Out of Scope

- Applying automatically.
- Scraping job boards in V1.

## CLI/API Sketch

```bash
job-search-skill score jobs/acme.md --resume resume.md
job-search-skill tracker add jobs/acme.md --status interested
```

## Verification

- Fixture resume/job pairs.
- Tests for evidence citation and unsupported skill claims.

## Agent Prompt

Build `job-search-skill` as a local evidence-grounded job search assistant with tracking and fit analysis.

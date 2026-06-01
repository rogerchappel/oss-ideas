# PRD: company-research-skill

Status: ready
Decision: ready

## Scorecard

Total: 78/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Company research gets scattered and uncited. |
| Demand signal | 16/20 | Useful for sales, jobs, investing, and partnerships. |
| V1 buildability | 16/20 | Local source-pack summarization is easy to test. |
| Differentiation | 12/15 | Citation-first research dossier. |
| Agentic workflow leverage | 13/15 | Strong reusable research skill. |
| Distribution potential | 5/10 | Broad but crowded. |

## Pitch

Turn a folder of saved company sources into a cited research brief, risks, questions, and outreach angles.

## Why It Matters

Agents should not produce uncited company claims. This skill keeps research grounded in supplied sources.

## V1 Scope

- Ingest Markdown, HTML text dumps, PDFs converted to text, and notes.
- Generate cited dossier, key people, product summary, risks, and questions.
- Mark stale or missing source dates.

## Out of Scope

- Live web scraping in V1.
- Contact enrichment.

## CLI/API Sketch

```bash
company-research-skill sources/acme/ --out briefs/acme.md
```

## Verification

- Fixture source packs.
- Tests for citation coverage and stale-source warnings.

## Agent Prompt

Build `company-research-skill` as a local citation-grounded company research dossier generator.

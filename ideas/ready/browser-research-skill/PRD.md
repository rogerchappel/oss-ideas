# PRD: browser-research-skill

Status: ready
Decision: ready

## Scorecard

Total: 76/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Browser research needs citations, source freshness, and extraction discipline. |
| Demand signal | 16/20 | Research agents are a major workflow. |
| V1 buildability | 15/20 | Start with saved pages and citation report. |
| Differentiation | 10/15 | Skill pattern, not a scraping platform. |
| Agentic workflow leverage | 13/15 | Useful general-purpose agent skill. |
| Distribution potential | 6/10 | Broad appeal. |

## Pitch

A research skill pattern for turning saved web/source material into cited briefs with freshness and uncertainty labels.

## Why It Matters

Agents should distinguish sourced facts from inference and stale material, especially when researching companies, products, or jobs.

## V1 Scope

- Ingest saved HTML/text/Markdown sources.
- Extract title, date, source URL when present.
- Generate cited brief and uncertainty notes.
- Flag stale or missing dates.

## Out of Scope

- Full browser automation.
- Bypassing paywalls or robots rules.

## CLI/API Sketch

```bash
browser-research-skill sources/ --out research.md
```

## Verification

- Fixture source pages.
- Tests for citation and freshness extraction.

## Agent Prompt

Build `browser-research-skill` as a local saved-source research brief generator with citations and freshness labels.

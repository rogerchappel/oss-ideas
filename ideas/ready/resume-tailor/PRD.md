# PRD: resume-tailor

Status: ready
Decision: ready

## Scorecard

Total: 77/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Tailoring resumes is tedious and risks unsupported claims. |
| Demand signal | 17/20 | Obvious broad demand from job seekers. |
| V1 buildability | 16/20 | Markdown inputs and diff output are feasible. |
| Differentiation | 10/15 | Claim-safe tailoring and evidence map. |
| Agentic workflow leverage | 12/15 | Useful paired with job-search-skill. |
| Distribution potential | 6/10 | Broad audience. |

## Pitch

Tailor a Markdown resume to a job description while preserving evidence and flagging unsupported claims.

## Why It Matters

Resume tailoring should improve relevance without inventing experience.

## V1 Scope

- Input resume Markdown and job description.
- Suggest reordered bullets and keyword alignment.
- Produce diff and evidence map.
- Flag missing evidence.

## Out of Scope

- PDF layout rendering.
- Auto-submitting applications.

## CLI/API Sketch

```bash
resume-tailor resume.md jobs/acme.md --out tailored.md
resume-tailor check tailored.md --source resume.md
```

## Verification

- Fixture resumes/jobs.
- Tests for unsupported claim detection.

## Agent Prompt

Build `resume-tailor` as a safe resume tailoring CLI that outputs evidence-backed diffs.

# PRD: launchbrief

Status: ready
Decision: ready

## Scorecard

Total: 78/100
Band: promising
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Launch details scatter across README, changelog, issues, and commits. |
| Demand signal | 15/20 | Maintainers need launch pages and release summaries. |
| V1 buildability | 18/20 | Static artifact generation is practical. |
| Differentiation | 11/15 | Evidence-first launch brief, not generic press copy. |
| Agentic workflow leverage | 12/15 | Agents can assemble launch material for review. |
| Distribution potential | 6/10 | Good for OSS and product teams. |

## Pitch

Turn a repo release candidate into a launch brief with proof, limitations, and promotion angles.

## Why It Matters

A credible launch needs more than "we shipped." It needs why it matters, what works now, what does not, and how to show it.

## V1 Scope

- Read README, changelog, package metadata, release notes, and git log.
- Generate launch brief, FAQ, social hooks, and demo checklist.
- Include known limitations and verification evidence.

## Out of Scope

- Publishing.
- Analytics.

## CLI/API Sketch

```bash
launchbrief ./repo --since v0.1.0 --out launch/
```

## Verification

- Fixture release repo with expected brief sections.
- Tests for missing release evidence.

## Agent Prompt

Build `launchbrief` as a local release-to-launch artifact generator for OSS maintainers and agents.

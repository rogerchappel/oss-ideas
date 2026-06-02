# PRD: video-skillkit

Status: in-progress
Decision: build now

## Scorecard

Total: 84/100
Band: build now
Last scored: 2026-06-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agent video workflows need repeatable briefs, shot lists, assets, and validation. |
| Demand signal | 16/20 | Short-form product demos and founder-led video are common growth workflows. |
| V1 buildability | 18/20 | Can generate structured briefs and validate local asset manifests. |
| Differentiation | 13/15 | Skill-focused wrapper around video production, not another video generator. |
| Agentic workflow leverage | 14/15 | Lets agents prepare video work safely before calling proprietary tools. |
| Distribution potential | 5/10 | Niche but immediately useful for Roger's workflow. |

## Pitch

A local skill pack for turning product facts into video briefs, shot lists, and reusable production manifests.

## Why It Matters

The bottleneck in fast video production is often not rendering; it is deciding what to say, what assets to use, and how to keep the output grounded.

## Qualification

### Pub Test

Yes: "Give agents a video production skill that prepares grounded briefs before generation."

### Competitors / Adjacent Tools

- Video generators: produce media, but not necessarily grounded production plans.
- Prompt libraries: useful, but weak on validation and asset tracking.

### Star / Demand Signal

- Creator tooling and AI video workflows are growing quickly.
- Roger needs daily product videos for OSS promotion.

### Real Problem

Agents need a repeatable pre-production layer so generated videos are not vague, mismatched, or overclaimed.

### V1 Buildability

No media generation required in V1. Produce JSON/Markdown manifests and validation.

## V1 Scope

- Generate video briefs from repo/product facts.
- Produce hook, script, scene list, asset checklist, caption pack, and safety notes.
- Validate that cited files/assets exist.
- Export handoff JSON for downstream video tools.

## Out of Scope

- Rendering final video.
- Posting to social platforms.
- Voice cloning or likeness management.

## CLI/API Sketch

```bash
video-skillkit brief ./repo --out video-plan/
video-skillkit validate video-plan/video.json
```

## Verification

- Fixture repo produces deterministic video manifest.
- Validation fails for missing assets and unsupported claims.

## Agent Prompt

Build `video-skillkit` as a local-first pre-production CLI for agent-generated product demo videos.

# PRD: codereel

Status: built
Decision: build now

## Scorecard

Total: 88/100
Band: build now
Last scored: 2026-06-09
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 19/20 | OSS repos need fast, credible video walkthroughs so strangers understand the tool before reading docs. |
| Demand signal | 17/20 | Repo-to-video demos are emerging; RepoReel shows the shape, but is HeyGen/Hyperframes-specific. |
| V1 buildability | 18/20 | A useful V1 can generate scripts, storyboards, HTML frames, and dry-run assets without paid video APIs. |
| Differentiation | 14/15 | Local-first, provider-optional, verification-backed repo walkthroughs rather than avatar-first generation. |
| Agentic workflow leverage | 15/15 | Agents can turn every OSS repo into launch/demo assets as part of the release pipeline. |
| Distribution potential | 5/10 | Strong fit for maintainers, devrel, OSS factories, and agent-built repo portfolios. |

## Pitch

Turn a GitHub or local repo into a verified narrated walkthrough package: script, storyboard, visual frame plan, optional generated HTML/Remotion/Hyperframes composition, and a shareable demo brief.

## Inspiration

Inspired by the repo-to-video workflow demonstrated by `tantk/reporeel`, which turns a GitHub repo into an avatar-narrated walkthrough using Claude Code, HeyGen Avatar IV, and Hyperframes.

`codereel` should not clone RepoReel. It should build a broader local-first release/promotional layer:

- no paid API required for the core output
- local repo inspection as first-class input
- verification-backed claims
- provider adapters for renderers/avatars/TTS
- outputs useful even before final MP4 rendering

## Why It Matters

Roger's OSS sprint is producing lots of repositories and commits. The bottleneck is now making the work legible, credible, and promotable. A tool that can create honest repo walkthrough assets from real code would multiply the value of every release-ready repo.

Longer term, this is also a proof of concept for product-videogen/ClutchCut. The OSS version should prove the repo-inspection, claim-verification, scripting, and storyboard data model independently before any private product integration. Keep the core clean enough that product-videogen can later import the model or consume the JSON outputs as a video-generation input.

## Qualification

### Pub Test

Yes: "Generate an honest repo walkthrough package from real code, with claims checked against the repo."

### Competitors / Adjacent Tools

- RepoReel: strong proof of concept, but tightly tied to HeyGen Avatar IV and Hyperframes.
- README generators: produce docs, not video/storyboard assets.
- AI video tools: render media, but often lack repo inspection and claim verification.
- Devrel templates: useful but manual and not repo-grounded.

### Real Problem

Most OSS tools do not fail because they lack code. They fail because strangers cannot quickly understand:

- what the tool does
- why it matters
- how to run it
- what proof exists that it works

### V1 Buildability

V1 does not need to render a final video. It can inspect a repo and emit a complete walkthrough kit:

- `script.md`
- `storyboard.json`
- `claims.json`
- `frames/` HTML or Markdown frame descriptions
- `assets.md`
- `demo-commands.md`
- `verification.md`

## V1 Scope

- Accept a local path or GitHub URL.
- Inspect README, package metadata, scripts, tests, examples, CLI bins, and recent release notes.
- Generate a 3-5 scene walkthrough script.
- Generate a storyboard with scene timing, visual direction, narration, and cited evidence.
- Verify claims against local files and commands where safe.
- Emit a demo command plan with confidence levels.
- Export renderer-neutral JSON for downstream tools.
- Include optional adapters/sketches for Remotion, Hyperframes, or static HTML frames.

## Future Product-Videogen Integration

Design the output contract so ClutchCut/product-videogen could later consume `codereel` artifacts:

- `storyboard.json` maps cleanly to a timeline: scenes, durations, narration, captions, and visual directions.
- `claims.json` provides grounded copy with file/command evidence so generated videos avoid unsupported claims.
- `assets.md` and frame exports can become upload/asset prompts for video generation.
- `demo-commands.md` can become terminal-capture or screen-recording instructions.
- Provider adapters should remain optional so product-videogen can replace them with its own render pipeline later.

The OSS proof-of-concept should not depend on product-videogen internals, private repos, or ClutchCut APIs.

## Out of Scope

- Posting to social platforms.
- Voice cloning.
- Mandatory avatar rendering.
- Paid provider dependency in core workflow.
- Fabricated benchmarks, adoption claims, or compatibility.

## CLI/API Sketch

```bash
codereel inspect ./repo --out .codereel/
codereel script ./repo --out .codereel/
codereel storyboard .codereel/script.md --repo ./repo --out .codereel/storyboard.json
codereel verify .codereel/storyboard.json --repo ./repo
codereel export .codereel/storyboard.json --format html --out .codereel/frames/
```

## Data Model

Core outputs:

- `repo.json`: detected repo facts, scripts, bins, tests, topics, links
- `claims.json`: generated claims with file/command evidence
- `storyboard.json`: scenes, narration, visuals, evidence, timing
- `verification.json`: pass/fail/warn results for claims and commands

## Verification

- Fixture repos for CLI, library, docs-only, and weak/scaffold repos.
- Snapshot tests for generated storyboard structure.
- Claim verification fails when the script mentions unsupported commands, features, or release state.
- Export smoke test verifies HTML frames are produced.
- Package smoke confirms installed CLI can run against fixture repo.

## Agent Prompt

Build `codereel` as a local-first CLI that turns existing repos into verified walkthrough/storyboard packages for demo videos. Focus on truthful repo inspection, claim verification, and renderer-neutral outputs before adding provider-specific video rendering. Treat it as an OSS proof-of-concept for a future product-videogen/ClutchCut repo-to-video workflow, but keep V1 independent and usable without private product APIs.

## Build Outcome

- Repo: https://github.com/rogerchappel/codereel
- Release-candidate PR: https://github.com/rogerchappel/codereel/pull/1
- Classification: ship

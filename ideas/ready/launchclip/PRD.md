# PRD: launchclip

Status: ready
Decision: ready for next OSS factory development round

## Scorecard

Total: 88/100
Band: build now
Last scored: 2026-06-10
Scored by: OpenClaw agent from Roger direction

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Roger needs to pivot from shipping many OSS tools to consistently promoting them. |
| Demand signal | 16/20 | OSS maintainers and indie builders repeatedly need demo clips, captions, and social scheduling without a heavyweight marketing stack. |
| V1 buildability | 18/20 | Can start as a local-first orchestrator over repo facts, generated artifacts, captions, and dry-run queue receipts. |
| Differentiation | 13/15 | Focused on agent-built OSS promotion rather than generic social scheduling or generic video editing. |
| Agentic workflow leverage | 15/15 | Perfect agent workflow: inspect repo, produce evidence-backed demo assets, build edit plan, write captions, queue content. |
| Distribution potential | 8/10 | The tool promotes other tools, making every output a potential demo of the workflow itself. |

## Pitch

`launchclip` turns an OSS repo into a grounded social promo packet: demo artifacts, a short-form video edit plan, captions, generated media handoff, and a dry-run or approved queue payload for Clutch Cut.

## Why It Matters

Roger's OSS factory can generate a lot of useful tools, but the next bottleneck is distribution. Each project needs proof that it works, a compelling demo angle, a short video, platform-specific captions, and a way to queue the content without manually stitching every step together.

The key is not to make another all-in-one video editor. The useful layer is an orchestration CLI and agent skill that coordinates existing local-first tools and emits reviewable artifacts before anything is posted.

## Qualification

### Pub Test

Can this be explained clearly in one sentence? Yes: "Run one command on an OSS repo and get a reviewable promo package with demo evidence, short-video plan, captions, and a queued social draft."

### Competitors / Adjacent Tools

- `video-skillkit` - already creates grounded video briefs and `video.json`; it should remain pre-production only.
- `cutpilot` - already handles local footage, EDLs, ffmpeg render plans, and optional local render execution.
- `tool-demo-script` - adjacent demo script/narration generator for CLI repos.
- `postmaker` - adjacent grounded social draft generator with explicit claim status.
- Remotion / Hyperframes-style renderers - good downstream adapters, but should not be hard-coded into the planning layer.
- Buffer, Hypefury, Typefully, Later, and native platform schedulers - useful scheduling references, but not local-first OSS-agent pipelines.
- `repo-to-content` - adjacent evidence-grounded launch content generator from repo facts.
- Clutch Cut - target queue and publishing system for Roger's content workflow.
- Product videogen API - target media generation/rendering system for turning approved scene plans into assets.

### Star / Demand Signal

- Personal workflow pain: Roger is moving from OSS production volume to promotion volume.
- Existing repo garden already includes pieces of the workflow: `video-skillkit`, `cutpilot`, `tool-demo-script`, `postmaker`, `pagepix`, and `ossrank`.
- Social distribution is the obvious next leverage point for local-first CLI projects: users need to see the problem, command, output, and install path quickly.

### Real Problem

OSS tools do not promote themselves. A maintainer or agent currently has to manually inspect a repo, choose a demo command, run it, capture output, write a video plan, render or hand off media, write captions, and queue posts. That manual chain is slow enough that promotion gets skipped.

### V1 Buildability

V1 can be built without external posting permissions:

- read a local repo
- generate deterministic demo artifacts
- call or emulate existing local tools where installed
- write `launchclip.json`, `brief.md`, `captions.md`, `queue.clutchcut.json`, and `REVIEW.md`
- support `--dry-run` by default
- require explicit approval/config before queue submission

## V1 Scope

- CLI command to inspect a repo and create a promotion workspace.
- Demo artifact stage:
  - choose a safe demo command from README/package scripts or accept `--demo-cmd`
  - run commands only with explicit allowlist/config
  - capture terminal output, screenshots, markdown snippets, and install commands
  - write provenance for every claim
- Video planning stage:
  - produce a `video-skillkit`-compatible manifest or consume an existing `video.json`
  - choose a format preset such as `short-15`, `short-30`, or `carousel`
  - emit a viral short structure: hook, proof, payoff, CTA
  - optionally hand off to `cutpilot` for local EDL/render planning when source footage exists
  - optionally emit renderer adapter inputs for Remotion or Hyperframes in later versions
- Caption stage:
  - generate platform-specific captions for X, LinkedIn, TikTok/Reels/Shorts, and Bluesky
  - include claim status and evidence links
  - include installation CTA and GitHub URL
  - keep editable drafts before queueing
- Queue stage:
  - write a Clutch Cut queue payload
  - default to `--dry-run`
  - support `--queue clutchcut` only after explicit config/approval
  - write a queue receipt showing destination, assets, captions, and publish status
- Publish bridge stage:
  - submit approved video plans to product-videogen only with explicit `--submit`
  - attach generated media asset IDs or URLs to the Clutch Cut queue payload
  - support direct Clutch Cut API submission or local import-folder/dropfile workflows
  - save request/response receipts with secrets redacted
- Agent skill:
  - clear workflow for agents to run inspect, create artifacts, review, render or dry-run, write captions, and queue
  - approval checkpoints before rendering final media or queueing externally

## Out of Scope

- Direct posting to social platforms in V1.
- Cloud rendering queues in V1.
- Full video editor UI.
- Replacing `video-skillkit`, `cutpilot`, or `postmaker`.
- Generating unsupported product claims.
- Using secrets or Clutch Cut credentials without explicit local config.
- Auto-publishing without human approval.

## CLI/API Sketch

```bash
launchclip init ./my-oss-tool --out .launchclip/my-oss-tool

launchclip demo ./my-oss-tool \
  --out .launchclip/my-oss-tool \
  --demo-cmd "npm run smoke" \
  --capture terminal

launchclip plan .launchclip/my-oss-tool \
  --format short-30 \
  --renderer none

launchclip captions .launchclip/my-oss-tool \
  --platforms x,linkedin,tiktok,bluesky

launchclip queue .launchclip/my-oss-tool \
  --queue clutchcut \
  --dry-run

launchclip render .launchclip/my-oss-tool \
  --provider product-videogen \
  --dry-run

launchclip publish .launchclip/my-oss-tool \
  --provider clutchcut \
  --dry-run

launchclip review .launchclip/my-oss-tool
```

Example output:

```text
.launchclip/my-oss-tool/
  launchclip.json
  demo/
    terminal.txt
    command-receipt.json
    screenshot.png
  video/
    video.json
    brief.md
    render-plan.json
    product-videogen.dry-run.json
  captions/
    x.md
    linkedin.md
    tiktok.md
    bluesky.md
  queue/
    clutchcut.dry-run.json
    clutchcut.publish.dry-run.json
    receipt.json
  REVIEW.md
```

## Orchestration Model

The CLI should behave like a small pipeline runner with explicit stage receipts:

1. `discover` - read repo metadata, README, package scripts, screenshots, and release docs.
2. `demo` - create or collect proof artifacts for a concrete tool workflow.
3. `brief` - call `video-skillkit` semantics to create a grounded video manifest.
4. `edit` - emit viral-format edit instructions and optionally call `cutpilot` or a renderer adapter.
5. `caption` - create platform drafts using only evidence-backed claims.
6. `render` - create a product-videogen request or local renderer plan; submit only when approved.
7. `queue` - create a Clutch Cut payload and dry-run receipt; submit only when approved.
8. `publish` - call Clutch Cut directly or write an import payload; never auto-post without approval.
9. `review` - produce one human-readable packet with claims, assets, captions, API requests, and queue status.

Each stage should be rerunnable and should read/write JSON so agents can inspect and patch artifacts between stages.

## Agent Skill Workflow

The skill should instruct agents to:

1. Identify the repo and target audience.
2. Run `launchclip init`.
3. Inspect suggested demo commands and ask before running non-trivial commands.
4. Run `launchclip demo` and verify artifacts.
5. Run `launchclip plan` to create a short-form structure.
6. Review claims against local evidence.
7. Run `launchclip captions`.
8. Run `launchclip queue --dry-run --queue clutchcut`.
9. Present `REVIEW.md` to Roger before product-videogen render, upload, queue submission, or posting.

## Renderer Strategy

`launchclip` should not own one renderer. It should define adapter contracts:

- `renderer: none` - planning only, default for V1.
- `renderer: cutpilot` - local footage and ffmpeg plan/render via `cutpilot`.
- `renderer: remotion` - future adapter that emits a Remotion project or composition props.
- `renderer: hyperframes` - future adapter that emits Hyperframes-compatible scene/frame input.

This keeps `video-skillkit` clean as the manifest/brief layer and lets rendering evolve independently.

## Clutch Cut Queue Strategy

V1 should write a local queue payload before it submits anything:

```json
{
  "schemaVersion": "launchclip.clutchcut.v1",
  "project": "my-oss-tool",
  "assets": [],
  "captions": [],
  "platforms": ["x", "linkedin", "tiktok"],
  "approvalRequired": true,
  "dryRun": true
}
```

Submission should require:

- a local config file naming the Clutch Cut endpoint or import folder
- explicit `--submit`
- a queue receipt saved to disk
- no hidden credentials in logs

## Product Videogen Strategy

The posting system should treat product-videogen as the media generation/render provider and Clutch Cut as the scheduling/publishing provider.

Product-videogen requests should be built from the approved `video.json`, renderer settings, captions, and demo artifacts:

```json
{
  "schemaVersion": "launchclip.product-videogen.v1",
  "project": "my-oss-tool",
  "sourceManifest": "video/video.json",
  "format": "short-30",
  "assets": [],
  "captions": [],
  "approvalRequired": true,
  "dryRun": true
}
```

The adapter should support:

- `launchclip render --provider product-videogen --dry-run` to preview the request
- `launchclip render --provider product-videogen --submit` to create media after approval
- storing returned asset IDs, URLs, thumbnails, durations, and provider job IDs
- attaching rendered assets to `queue/clutchcut.*.json`
- retry-safe receipts so agents can resume without duplicate posts

The API integration should be narrow and swappable:

- `POST /render-jobs` or equivalent for product video generation
- `GET /render-jobs/:id` or equivalent for status
- `POST /queue-items` or equivalent for Clutch Cut queue insertion
- optional local import folder mode for early development before stable APIs exist

## Verification

- Fixture repo produces deterministic `launchclip.json`, `video.json`, captions, queue payload, and `REVIEW.md`.
- Demo command allowlist prevents accidental network or publish commands.
- Captions include evidence or claim status for every product claim.
- Queue command defaults to dry-run and refuses to submit without explicit config plus `--submit`.
- Product-videogen command defaults to dry-run and refuses to submit without explicit config plus `--submit`.
- Clutch Cut publish command records a dry-run payload and refuses live submission without approval.
- Snapshot tests cover generated markdown and JSON.
- CLI tests cover rerunning individual stages.
- Adapter tests use fixture HTTP clients; no real API calls in CI.
- `npm run check`, `npm test`, `npm run smoke`, and `npm run package:smoke` pass.

## Agent Prompt

Build `launchclip`, a local-first TypeScript CLI and agent skill for turning OSS repositories into reviewable social promo packets.

The V1 should orchestrate demo artifact creation, short-form video planning, platform caption drafting, product-videogen render request generation, and Clutch Cut queue/publish payload generation. Keep external posting disabled by default. Write deterministic JSON and Markdown artifacts for every stage. Reuse the existing ecosystem boundaries: `video-skillkit` remains the grounded brief/manifest layer, `cutpilot` remains the local EDL/ffmpeg render path, `repo-to-content`/`postmaker` can inform evidence-backed copy, product-videogen handles media generation, and Clutch Cut handles queueing/publishing. Renderer adapters such as Remotion or Hyperframes stay optional future integrations. Include fixture-backed tests, a smoke command, release checks, and an agent skill that forces review before rendering, upload, queue submission, or posting.

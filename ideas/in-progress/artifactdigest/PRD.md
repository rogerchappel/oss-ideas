# PRD: artifactdigest

Status: in-progress
Decision: build now
Factory run: 2026-05-29 PM

## Pitch

`artifactdigest` verifies local CI artifact manifests by hashing files, checking expected paths, and producing deterministic proof reports. It gives small repos a simple "what did this build actually produce?" receipt. 📦

## Source Attribution

Inspired by GitHub Actions artifact digest metadata and common release-readiness pain around unverifiable build outputs. Reframed as an offline manifest/proof CLI rather than a GitHub API client.

## Problem

Builds often produce tarballs, docs, screenshots, coverage, or generated SDKs, but local checks only say "build passed." Maintainers need stable artifact manifests that catch missing, extra, or changed outputs.

## V1 Scope

- TypeScript CLI package.
- `artifactdigest init`, `artifactdigest capture <paths...>`, and `artifactdigest verify artifactdigest.json`.
- Hash files with SHA-256, record sizes, modes, normalized paths, and optional labels.
- Respect ignore patterns and deterministic sorting.
- Emit JSON and Markdown reports.
- Fixture-backed tests for capture, verify, changed files, missing files, extra files, ignores, and reports.

## Out of Scope

- Uploading artifacts.
- Signing or key management.
- Remote CI provider integrations.

## Verification

Run `npm test`, `npm run check`, `npm run build`, `npm run smoke`, `bash scripts/validate.sh`, and an end-to-end capture/verify smoke on fixture outputs.


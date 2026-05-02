# PagePix

Status: in-progress

## Scorecard

Total: 83/100
Band: strong
Last scored: 2026-05-02
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 17/20 | Developers often need deterministic image previews from HTML/Markdown/DOCX-like documents for docs, diffs, previews, and social cards. |
| Demand signal | 16/20 | SimonCropp/Morph shows demand for document-to-image conversion; a non-.NET CLI/library variant is useful. |
| V1 buildability | 17/20 | HTML/Markdown to PNG via local rendering is feasible today; DOCX can be a safe planned adapter or limited text extraction. |
| Differentiation | 13/15 | TypeScript/Node local-first renderer focused on CLI/docs workflows rather than .NET packages. |
| Agentic workflow leverage | 13/15 | Agents can generate preview images for READMEs, release notes, visual diffs, and docs. |
| Distribution potential | 7/10 | Visual tooling demos well. |

## Pitch

A local-first page rendering toolkit for turning Markdown and HTML into dependable PNG previews, contact sheets, release-note images, and visual regression fixtures.

## Why It Matters

This gives Roger a real utility repo in a popular transformation/rendering category while avoiding a direct .NET clone. It can serve docs, README preview, and agent verification workflows.

## Attribution / Inspiration

Inspired by the document-to-image category represented by SimonCropp/Morph. Do not copy its code, API, docs, or package structure. Build an original TypeScript/Node implementation.

## V1 Scope

- CLI commands: `render`, `contact-sheet`, `inspect`, `doctor`.
- Render local HTML and Markdown to PNG using a deterministic local browser/rendering approach when available.
- Fixture-backed tests with small HTML/Markdown examples.
- Safe defaults: local files only, no remote fetch unless explicit flag, no script execution unless explicit unsafe flag.
- Document DOCX as future adapter or implement a minimal DOCX-to-HTML text extraction path if feasible without large scope.
- Output manifest with dimensions, page count, hashes.

## Out of Scope

- Full Word layout fidelity in V1.
- Native .NET packages.
- Remote URL crawling by default.

## Verification

- Unit tests for option parsing, manifest generation, safety gates, markdown conversion.
- Smoke test rendering fixture HTML/Markdown to PNG or deterministic fallback if browser unavailable.
- `npm test`, `npm run check`, `npm run build`, `npm run smoke`, validation script.

## Agent Prompt

Build `PagePix` / repo `pagepix` as an original non-.NET document/page-to-image TypeScript CLI/library inspired by the Morph category, with a GitHub description like: “Render Markdown and HTML into preview images, contact sheets, and visual test fixtures from a local-first TypeScript CLI.” Use StackForge, docs, tests, smokes, publish, metadata, branch protection.

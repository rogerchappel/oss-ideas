# LinkCheck PRD

Status: in-progress

## Summary

LinkCheck is a local-first TypeScript CLI that scans markdown and HTML files for broken internal links, missing images, and dead external URLs — without running a server or requiring a headless browser.

## Motivation

Documentation rot is real. Local links drift, images get moved, and markdown files reference sections that no longer exist. External link checkers exist but require network access and often miss internal cross-references. LinkCheck bridges both: it validates internal links against the actual filesystem (no network needed) AND optionally pings external URLs for dead-link reports.

## Target users

- Documentation maintainers keeping markdown wikths healthy
- OSS projects with large docs directories
- OSS maintainers preparing a release and wanting to catch broken references
- Agentic workflows that generate or edit markdown files

## Goals

- Parse markdown files for `[text](url)` links, image references (`![alt](src)`), and section anchors (`#section`)
- Validate internal links: do the target files/directories exist?
- Validate section anchors: does the referenced heading exist in the target file?
- Optionally check external URLs with a configurable timeout (`--check-external`)
- Support relative path resolution from file directories
- Output a report: OK, broken internal links, broken external URLs, missing anchors
- Exit non-zero when broken links are found (CI-friendly)
- Support `--ignore` patterns for URLs/paths to skip
- Support `--base-url` for projects that link relative to a docs root

## Non-goals

- Crawling/spidering websites (only scans local files)
- Fixing links automatically (report only)
- CSS/JS bundle link analysis

## Source attribution

Inspired by markdown-link-check, linkinator, and dead-link checkers. This is a reframed local-first take that prioritizes internal link correctness (filesystem-based) with optional external checks.
Decision: selected for 2026-05-22 AM OSS factory run

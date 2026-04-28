# PRD: ossmeter

Status: ready

## Pitch

Measure OSS sprint velocity and quality across repos.

## Why It Matters

Roger needs a scoreboard that does not reward vanity commits.

## V1 Scope

- CLI: `ossmeter scan <workspace>`
- Scans local git repos
- Reports commits, branches, files changed, repos touched
- Tracks quality indicators and uncommitted work
- Outputs terminal table, Markdown, JSON

## Out of Scope

- No GitHub API in V1
- No external ranking
- No productivity moralizing

## Verification

- Fixture workspace with multiple git repos
- Snapshot report tests

## Agent Prompt

Build `ossmeter`, a local-first CLI that scans a workspace of git repos and reports daily OSS sprint velocity plus quality signals. Include Markdown/JSON output, fixture workspace tests, README, examples, and clear metric definitions.

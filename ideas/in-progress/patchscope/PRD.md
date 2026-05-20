# PRD: patchscope

Status: in-progress

## Summary

PatchScope is a local-first TypeScript CLI that analyzes git patches and PR diffs for security risks, dependency changes, API surface modifications, and complexity regressions. It reads unified diffs, classifies changes by risk category, and produces actionable reports for code review — especially agentic review loops that need deterministic risk scoring.

Built for developers and teams who want fast, automated second-pass review on any diff without needing the full repo context.

## Inspiration

- `reviewbundle` exists but focuses on review bundling; patchscope is about patch *analysis*.
- `depgraph` covers dependency graphs; patchscope covers dependency *changes*.
- Code review is the highest-leverage developer workflow; automated diff analysis is underserved.

Reframed: patchscope is **eslint for git diffs** — catch risky changes before they land, regardless of review platform.

## Scorecard

Total: 83/100
Band: build now

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 16/20 | Code review misses security issues and subtle breaking changes; reviewers are overloaded. |
| Demand signal | 16/20 | diff-based tools consistently popular; existing tools are platform-specific or cloud-based. |
| V1 buildability | 17/20 | Unified diff parsing is well-understood; rule-based analysis is buildable fast. |
| Differentiation | 14/15 | Local-first, platform-agnostic, focused on risk classification not style linting. |
| Agentic workflow leverage | 13/15 | Perfect fit for agent review loops — deterministic diff scoring without API calls. |
| Distribution potential | 7/10 | Name is clear; audience is reviewers and CI systems. |

## MVP

- Parse unified diff input (stdin, file, or git diff output)
- Classify changes: security-sensitive files, dependency updates, public API changes, large refactorings
- Risk scoring per file and overall
- Detect: secret patterns, chmod +x changes, lockfile-only updates, deleted tests
- Output: JSON report + human-readable summary with per-file findings
- CLI: `patchscope check`, `patchscope from-diff`, `patchscope from-git`, `patchscope rules`, `patchscope report`

## Tech stack

TypeScript, Node.js CLI, no external dependencies for core diff parsing

## Non-goals

- No integration with specific PR platforms (GitHub, GitLab, etc.)
- No code execution or runtime analysis
- No style/lint checking (use existing linters for that)

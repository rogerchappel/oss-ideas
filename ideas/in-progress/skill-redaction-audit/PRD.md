# PRD: skill-redaction-audit

Status: in-progress
Decision: build now
Updated: 2026-06-24

## Scorecard

Total: 84/100
Band: build now
Last scored: 2026-06-23
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agent skills and runbooks often accumulate examples that can include secrets, customer details, private URLs, or live-account instructions before publication. |
| Demand signal | 17/20 | Roger's OSS skill lanes repeatedly package skills, fixtures, release notes, and generated docs for public repos. |
| V1 buildability | 18/20 | A deterministic scanner over Markdown, YAML frontmatter, JSON fixtures, and release notes is feasible without network calls. |
| Differentiation | 12/15 | Focuses on agent-skill artifacts and side-effect language rather than generic secret scanning alone. |
| Agentic workflow leverage | 15/15 | Gives agents a repeatable pre-publication audit before pushing public skill repos. |
| Distribution potential | 4/10 | Useful to agent builders, but adoption depends on examples and CI snippets. |

## Pitch

A local-first audit skill and CLI that checks agent-skill bundles for sensitive content, unsafe live-action instructions, and missing redaction notes before public release.

## Why It Matters

Public skill repos need credible examples, but examples can leak private workspace names, customer identifiers, credentials, or instructions that cause agents to write to external systems. A focused redaction audit gives agents a final gate that is narrower than a full security scanner and easier to use in release-candidate workflows.

## V1 Scope

- CLI: `skill-redaction-audit scan <path> --format json|markdown`.
- Scan Markdown, YAML, JSON, `.env.example`, fixtures, and release notes.
- Detect common secret patterns, personal data placeholders that look real, live external-action verbs, and missing redaction/safety sections.
- Include fixture-backed allowlist support for intentional examples such as `example.com`, `sk_test_*`, and fake tokens.
- Emit actionable diagnostics with file paths, line numbers, severity, and suggested replacement text.
- Include `SKILL.md` describing when agents should run the audit, side-effect boundaries, approval needs, examples, and validation.

## Out of Scope

- Cloud scanning, telemetry, or uploading artifacts.
- Comprehensive enterprise DLP.
- Rewriting files automatically in V1.
- Publishing packages or creating GitHub releases.

## CLI/API Sketch

```bash
skill-redaction-audit scan ./skill-repo --format markdown
skill-redaction-audit scan ./skill-repo --allowlist ./.redaction-allowlist.json --fail-on warning
```

## Verification

- Fixture tests for clean, warning, and blocked skill bundles.
- CLI smoke test using local fixtures only.
- README with quickstart, examples, limitations, and safety notes.
- `npm test`, `npm run check`, `npm run smoke`, and `bash scripts/validate.sh`.

## Agent Prompt

Build `skill-redaction-audit` as a public, local-first TypeScript CLI and reusable agent skill for auditing skill bundles before public release. Keep it deterministic, fixture-backed, and read-only by default.

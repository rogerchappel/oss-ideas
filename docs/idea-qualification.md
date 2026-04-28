# Idea Qualification Test

AI can generate ideas quickly. That is not the bottleneck.

The bottleneck is finding ideas that pass a simple usefulness test before agents spend time building them.

## The Test

An idea should not move from `backlog` to `ready` unless it passes these checks.

### 1. Pub Test

Can the idea be explained clearly in one sentence to a smart developer at the pub?

Good signs:

- the problem is obvious without a long setup
- the name roughly hints at what it does
- the pitch creates an immediate "I get it" reaction

Bad signs:

- it needs five minutes of context
- it sounds like an internal workflow disguised as a product
- the pitch is mostly jargon

### 2. Competitor Test

Are there competitors, adjacent tools, or similar repos?

Good signs:

- similar repos exist
- people are already solving the problem manually
- existing tools are too broad, too enterprise, too complex, too stale, or not agent-native

Bad signs:

- no one appears to care about the problem
- the idea only makes sense inside Roger's exact setup
- the market is crowded and the idea has no clear angle

### 3. Star Signal Test

Do similar repos have GitHub stars, forks, issues, discussions, or recent activity?

Use stars as signal, not truth.

Useful checks:

- GitHub search for similar keywords
- star count on adjacent projects
- last commit date
- open issues that show pain
- forks or downstream usage
- Hacker News, Reddit, X, Discord, or blog posts discussing the problem

Passing does not require huge numbers. A small repo with active users and painful issues can be a better signal than a large stale repo.

### 4. Real Problem Test

Does this solve a problem Roger has, or a problem someone else is actively talking about?

At least one must be true:

- Roger has personally hit the problem during the OSS sprint
- agents repeatedly fail or waste time because this tool does not exist
- developers are asking for this in issues, posts, forums, or Discords
- existing tools solve it poorly for AI-agent workflows

### 5. V1 Buildability Test

Can an agent build a useful V1 in a tight scope?

Good V1 shape:

- local-first
- deterministic by default
- CLI or docs-first
- no hidden network calls
- no secret management requirement
- testable with fixtures
- useful before it becomes a platform

Bad V1 shape:

- requires hosted infra
- requires OAuth or third-party credentials on day one
- depends on vague LLM quality
- needs a marketplace or network effect before it is useful

## Required Research Notes

Each idea PRD should include a `Qualification` section with:

```md
## Qualification

### Pub Test

<one sentence pitch and why it lands>

### Competitors / Adjacent Tools

- <repo/tool/link> — <signal, gap, stars/activity if known>

### Star / Demand Signal

- <evidence from GitHub/issues/forums/posts>

### Real Problem

- <Roger problem or external problem statement>

### V1 Buildability

- <why this can be built and verified quickly>
```

## Decision

Use one of:

```text
Decision: backlog
Decision: ready
Decision: reject
Decision: built
```

`ready` means the idea has enough evidence and scope for an agent to build V1.

`reject` is not failure. It means the idea did not earn build time yet.

# Idea Lifecycle

`oss-ideas` is a queue, not just an archive.

## Folders

```text
ideas/backlog/      Rough ideas. Interesting, but not yet scoped enough for an agent.
ideas/ready/        Scoped PRDs. Clear enough for an agent to build V1.
ideas/in-progress/  Active build already underway, but not yet treated as shipped.
ideas/built/        Implemented ideas. Repo exists or V1 shipped.
```

## Promotion Rules

### backlog -> ready

Move an idea to `ready` when it has:

- clear pitch
- why it matters
- passed the [Idea Qualification Test](idea-qualification.md)
- competitor or adjacent-tool research
- star, issue, discussion, or demand signal where available
- real problem evidence from Roger's workflow or external developer pain
- V1 scope
- out-of-scope list
- verification requirements
- agent prompt

### ready -> in-progress

Move an idea to `in-progress` when:

- build has started
- repo exists or task is actively assigned
- V1 is not yet ready to treat as shipped
- scorecard remains current

### ready -> built

Move an idea to `built` when:

- public or local repo exists
- V1 implementation is committed
- README exists
- basic verification passes or failure is documented
- follow-up work is captured

## Status Marker

Each PRD should include one of:

```text
Status: backlog
Status: ready
Status: in-progress
Status: built
```

The folder is the source of truth if the marker drifts.

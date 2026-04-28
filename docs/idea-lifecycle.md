# Idea Lifecycle

`oss-ideas` is a queue, not just an archive.

## Folders

```text
ideas/backlog/  Rough ideas. Interesting, but not yet scoped enough for an agent.
ideas/ready/    Scoped PRDs. Clear enough for an agent to build V1.
ideas/built/    Implemented ideas. Repo exists or V1 shipped.
```

## Promotion Rules

### backlog -> ready

Move an idea to `ready` when it has:

- clear pitch
- why it matters
- V1 scope
- out-of-scope list
- verification requirements
- agent prompt

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
Status: built
```

The folder is the source of truth if the marker drifts.

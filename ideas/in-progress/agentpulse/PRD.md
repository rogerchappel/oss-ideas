# agentpulse

Status: in-progress
Decision: build now

## Scorecard

Total: 87/100
Band: build now
Last scored: 2026-05-01
Scored by: Neo

| Criterion | Points | Notes |
|---|---:|---|
| Problem pain | 18/20 | Agent UIs need consistent state, but every app invents its own event names for thinking, speaking, tool use, approvals, errors, and interruptions. |
| Demand signal | 17/20 | Strong internal need from CrewCmd/OpenClaw-style apps and strong external category momentum around agent frontends. |
| V1 buildability | 19/20 | A deterministic TypeScript event contract, adapters, fixtures, and validator are very buildable. |
| Differentiation | 13/15 | More specific than generic telemetry: it maps agent runtime events into UI/voice/presence state. |
| Agentic workflow leverage | 15/15 | Becomes the glue between runtimes, AgentGlow, VoicePath, CrewCmd, and future mobile/desktop shells. |
| Distribution potential | 5/10 | Less visually viral than AgentGlow, but powerful as infrastructure for agent-app builders. |

## Pitch

A vendor-neutral event contract and SDK that turns messy agent runtime activity into clean UI-ready state for visualisation, voice, timelines, notifications, and approvals.

## Why It Matters

Agent interfaces are becoming multi-surface: web dashboards, mobile apps, desktop shells, Slack bots, voice assistants, and ambient displays. The hard part is not only rendering the UI; it is agreeing what the agent is doing right now.

Without a shared event layer, every app hard-codes fragile mappings from runtime logs into interface state. `agentpulse` defines the canonical event stream: listening, thinking, speaking, tool-running, waiting for approval, blocked, retrying, handing off, completed, and failed.

## Qualification

### Pub Test

“Give your agent app one clean event stream for every state your UI, voice layer, and activity timeline need.”

### Competitors / Adjacent Tools

- OpenTelemetry — validates structured event/trace demand, but is too broad and infrastructure-focused for agent presence and UX state.
- AG-UI-style frontend agent protocols — validates agent UI protocol demand, but `agentpulse` focuses on small runtime-to-interface state events that can drive voice, visuals, and timelines.
- Runtime-specific logs from OpenClaw, Claude Code, Codex, LangGraph, CrewAI, and custom harnesses — useful but inconsistent across providers and awkward for UI consumers.

### Star / Demand Signal

The rise of agent frontend libraries and agent runtime harnesses shows strong need for standard interface contracts. Roger’s own stack already has multiple consumers that would benefit: CrewCmd task boards, OpenClaw sessions, visual presence components, voice playback, and review timelines.

### Real Problem

CrewCmd and similar tools need to render the same underlying work in several ways:

- glowing visual presence
- voice speaking/listening state
- live run timeline
- approval queue
- Slack/web/mobile notifications
- proof-of-work capture

Today those consumers would each parse different logs or runtime states. That creates inconsistent UX and brittle integrations.

### V1 Buildability

V1 can ship as a small TypeScript package with schema definitions, validators, adapters, and examples. It does not need to control agents. It only standardises how agent activity is described.

## V1 Scope

- Package: `@agentpulse/core`.
- Canonical event schema for:
  - session started/stopped
  - user input received
  - agent thinking
  - agent speaking
  - tool call started/completed/failed
  - approval requested/resolved
  - blocker detected
  - handoff/delegation
  - interruption/cancellation
  - task completed/failed
- Derived state reducer that turns event history into current UI state.
- TypeScript types plus JSON Schema.
- Runtime adapters for mock events, OpenClaw-style session logs, and generic tool-call streams.
- Example consumers for AgentGlow, VoicePath, and a simple timeline.
- Fixture event logs for tests and demos.

## Out of Scope

- Full tracing backend.
- Database storage.
- Autonomous agent orchestration.
- UI rendering beyond examples.
- Provider-specific secrets or network calls.

## CLI/API Sketch

```ts
import { createAgentPulse, reduceAgentState } from '@agentpulse/core';

const pulse = createAgentPulse();

pulse.emit({
  type: 'tool.started',
  sessionId: 'sess_123',
  tool: { name: 'github.createPullRequest' },
  at: new Date().toISOString(),
});

const state = reduceAgentState(pulse.events());
// { mode: 'tool-running', currentTool: 'github.createPullRequest' }
```

```bash
agentpulse validate ./fixtures/run.jsonl
agentpulse replay ./fixtures/run.jsonl --format timeline
```

## Verification

- JSON Schema validation tests.
- Reducer snapshot tests for realistic agent event logs.
- Adapter fixtures for tool calls, approval waits, failures, retries, and interruptions.
- README explaining how to map runtime events into UI state.
- No network calls in core package.

## Agent Prompt

Build `agentpulse` as a small TypeScript event contract and reducer for agent-app state. Prioritise clean schemas, deterministic derived state, fixtures, and examples that drive AgentGlow, VoicePath, and a tool timeline. Do not build a full agent runtime.

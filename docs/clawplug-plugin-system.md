# PRD: clawplug — OpenClaw Plugin SDK

## Product Name

**clawplug**

## Tagline

The official plugin SDK for building typed OpenClaw plugins with zero boilerplate.

## One-Line Pitch

`clawplug` lets developers define plugin tools, config, and lifecycle hooks in a single file and automatically get a fully typed OpenClaw adapter, a standalone CLI, a plugin manifest, and a live dev server — no registration boilerplate, no result-wrapping, no manifest maintenance.

## 1. Objective

Create a two-part OSS ecosystem for extending OpenClaw with third-party plugins:

- **clawplug** — the core SDK: `definePlugin()` macro, TypeBox-driven config schemas with named sections, result-format wrapping, CLI generator, live dev server, plugin lifecycle hooks, publication validator, and reusable GitHub Actions workflows.
- **clawplug-template** — a GitHub template repository that scaffolds a complete plugin project (CI, tests, build) in one click.

Together, they make adding a custom toolset to OpenClaw as easy as writing a single TypeScript file.

## 2. Core Product Principle

> Writing an OpenClaw plugin should feel like writing Express route handlers — define the shape, return the result, everything else is infrastructure.

The SDK eliminates the four biggest friction points in plugin development:

1. **Boilerplate** — no adapter setup, no manifest JSON to maintain, no CLI argument parsing.
2. **Type safety** — config schema drives TypeScript inference for both tool parameters and config fields.
3. **Standalone utility** — every plugin is automatically a testable, standalone CLI usable outside OpenClaw.
4. **Test-first developer experience** — testing is a first-class concern, not an afterthought. V1 ships with `clawplug/test` helpers that let you invoke tools with mock config in a few lines.

## 3. Target Users

### Primary Users

- TypeScript developers who want to extend OpenClaw with custom tool integrations
- SaaS/API providers building official OpenClaw plugins for their services (Finnhub, GitHub, Jira, etc.)
- Internal enterprise teams wrapping proprietary APIs as OpenClaw tools

### Secondary Users

- OpenClaw itself — plugins installed from npm expand the tool ecosystem without core changes
- AI agents that can scaffold and publish plugins programmatically
- CLI users who want tool access without running an OpenClaw gateway

### Reference Inspiration

- <https://github.com/JeffSteinbok/carapace-plugin-sdk> — an existing community plugin SDK. Clawplug shares the core philosophy (define tools, get everything else) but differentiates in developer experience, lifecycle hooks, and test-first design.

## 4. Repository Types

Two repositories, each with a distinct role:

### clawplug (npm package + library)

TypeScript/Node library published to npm. Consumed as a dev and runtime dependency by plugin projects.

### clawplug-template (GitHub template repository)

A minimal `Use this template` repository. Contains a fully working plugin project with CI, tests, and build — all configured to depend on the SDK.

Suggested GitHub topics:

- `openclaw-plugins`
- `plugin-sdk`
- `typebox`
- `cli-generator`
- `developer-tools`
- `open-source`

## 5. Current V1 Surface Area

V1 covers the core SDK functionality and its companion template, with test-first and dev mode baked in from day one.

### clawplug — Core Features

| Feature | What it does |
|---------|-------------|
| `definePlugin()` | TypeBox-driven plugin definition with config schema and tool list. Produces a `createEntry` factory. |
| Config sections | Instead of one flat schema, config fields can be organized into named sections (`auth`, `connection`, etc.) for richer OpenClaw settings UI rendering. |
| Type inference | Tool parameters and config fields are fully inferred from the TypeBox schema — no casts, no `any`. |
| Result wrapping | `execute()` returns a plain object. SDK wraps it in the OpenClaw result format automatically. |
| Plugin lifecycle hooks | `onLoad`, `onToolCall`, `onError` hooks let plugins run initialization code, intercept tool invocations, and handle errors gracefully — middleware-style. |
| Manifest generation (`clawplug-generate-cli`) | Reads compiled plugin, extracts tool names, config schema, hooks, and generates `openclaw.plugin.json` + the standalone CLI. |
| Standalone CLI | Each tool becomes a subcommand. Supports `--json` flag, env var config mapping (`<PLUGIN_ID>_<FIELD>`). |
| `clawplug dev` (watch mode) | Live dev server that regenerates the CLI and manifest on source file changes during development — no manual rebuild step. |
| `clawplug validate` | Publication readiness checker: verifies exports, manifest, types, build output, and catches common mistakes before running `npm publish`. |
| `@clawplug/test` (testing utilities) | Helpers that let you call plugin tools with mock config, assert on results, and test hooks — no mock gateway needed. Ships in V1. |
| Shared configs | `tsconfig.base.json`, `tsup` preset — one-line extends and three-line configs. |
| Reusable GitHub Actions | `plugin-ci.yml` and `plugin-release.yml` — no workflow logic to copy. |

### clawplug-template — What it scaffolds

- `src/plugin.ts` — single entry point with example greet tool
- `tests/plugin.test.ts` — test file using `@clawplug/test` helpers via vitest
- `package.json` — build scripts, bin entry, SDK dependency
- `tsconfig.json` — one-line SDK config extension
- `tsup.config.ts` — three-line SDK config
- `.github/workflows/ci.yml` — calls reusable SDK CI workflow
- `.github/workflows/release.yml` — calls reusable SDK release workflow

No generated files are committed. After `npm run build`:

```
dist/
  plugin.js
  adapter.js
  bin/
    my-plugin.js
openclaw.plugin.json
```

### Developer experience — one file

```ts
import { definePlugin } from "clawplug";
import { Type } from "@sinclair/typebox";

export const createEntry = definePlugin({
  id: "my-plugin",
  name: "My Plugin",
  description: "Does something useful.",

  // Config sections for richer settings UI
  configSchema: {
    auth: Type.Object({
      apiKey: Type.String({ description: "API key for the service." }),
      apiSecret: Type.Optional(Type.String({ description: "Optional API secret." })),
    }),
    connection: Type.Object({
      timeout: Type.Optional(Type.Number({ description: "Request timeout in ms." })),
    }),
  },

  // Lifecycle hooks
  hooks: {
    onLoad: async (config) => {
      // validate connectivity, warm up caches, etc.
    },
    onError: async (toolName, error) => {
      // centralized error handling
    },
  },


  tools: (tool) => [
    tool({
      name: "do_thing",
      description: "Does the thing.",
      parameters: Type.Object({
        input: Type.String({ description: "Input value." }),
      }),
      execute: async ({ input }, config) => {
        return { result: input, usingKey: !!config.auth.apiKey };
      },
    }),
  ],
});
```

That's the entire plugin. Build and you get adapter, CLI, and manifest.

### Test-first with @clawplug/test

```ts
import { testPlugin } from "@clawplug/test";
import { createEntry } from "../src/plugin";

test("do_thing returns input", async () => {
  const { tools } = testPlugin(createEntry, {
    auth: { apiKey: "test-key" },
    connection: { timeout: 5000 },
  });

  const result = await tools.do_thing({ input: "hello" });
  expect(result.content[0].text).toMatch(/hello/);
});
```

### Live dev mode

```bash
clawplug dev
# Watches src/ and regenerates adapter + CLI + manifest on changes
# Open a second terminal and run: my-plugin do-thing "test"
```

### Validate before publishing

```bash
clawplug validate
# ✓ Manifest generated
# ✓ All exports present
# ✓ TypeScript strict mode passes
# ✓ No stray generated files in repo
# ✓ Plugin is ready to publish
```

## 6. V1 Requirements

V1 must:

- provide `definePlugin()` that accepts id, name, description, configSchema, hooks, and tools
- use TypeBox for all schema definitions (config + tool parameters)
- support named config sections that flatten to a single config object at runtime
- fully infer execute() parameter and return types from schemas
- automatically wrap execute() return values in OpenClaw result format
- provide plugin lifecycle hooks: `onLoad`, `onToolCall`, `onError`
- generate `openclaw.plugin.json` manifest from the plugin definition
- generate a standalone CLI where each tool is a subcommand
- map config fields to env vars using `<PLUGIN_ID>_<FIELD>` convention
- support `--json` output flag on CLI subcommands
- ship `clawplug dev` watch mode for zero-rebuild local development
- ship `clawplug validate` publication readiness checker
- ship `@clawplug/test` testing helpers for mock tool invocation
- ship shared `tsconfig.base.json` and `tsup` config preset
- provide reusable GitHub Actions workflows for CI and release
- include a template repository with working example, CI, tests, and build using `@clawplug/test`
- example plugin in template must pass `npm test` and `npm run build`
- use MIT license for both repos

V1 must not:

- require OpenClaw to be installed for plugin development or testing
- require any API keys to build or test a plugin
- include specific integrations (the SDK is generic, not opinionated about what tools do)
- generate or commit dist files
- require Node.js beyond what OpenClaw itself supports

## 7. Implemented Optional Areas

### Architecture documentation

The SDK should include `ARCHITECTURE.md` explaining:

- The type machinery behind `definePlugin()`
- Config section flattening: named groups at declaration time, single object at runtime
- Plugin lifecycle hook execution order and error propagation
- How `clawplug-generate-cli` inspects the compiled plugin to extract metadata
- The CLI runtime and subcommand dispatch
- The adapter pattern for OpenClaw integration
- How result wrapping transforms plain objects into OpenClaw protocol format
- How `@clawplug/test` provides mock-gateway-free testing
- The `clawplug dev` watch mode file dependency graph

### Real plugin examples

At least one full integration repo demonstrating:

- Multiple data sources
- API key config
- Error handling strategies with hooks
- Testing patterns using `@clawplug/test`
- External dependency mocking

## 8. Future Enhancements

### Plugin Marketplace Integration

The generated `openclaw.plugin.json` could include metadata for discovery:

- Author, homepage, repository URL
- Screenshots or usage examples
- Category tags for marketplace browsing
- Compatibility version ranges

### Plugin Configuration UI

The configSchema TypeBox schema could drive an OpenClaw settings UI:

- Tabbed form fields rendered from config sections
- OAuth flow support for services requiring auth
- Connection test button in settings panel

### Template Variants

Additional template flavours beyond the basic one:

- `clawplug-template-api` — shows external API integration
- `clawplug-template-database` — shows persistent storage patterns
- `clawplug-template-webhook` — shows webhook/callback patterns

### Plugin Versioning and Dependency Management

Support for plugins declaring dependencies on other plugins or specific OpenClaw versions, loaded via the SDK's adapter.

### Plugin Analytics (Opt-in)

Optional SDK integration for collecting anonymous usage data:

- Tool invocation counts
- Error rates per tool
- Config schema field usage

## 9. Acceptance Criteria

V1 is acceptable when:

- `definePlugin()` works with zero-config setup
- TypeScript inference flows correctly from TypeBox schemas through to execute() parameters and config sections
- `npm run build` generates adapter, CLI, and manifest without errors
- CLI subcommands return correct results in both human-readable and `--json` modes
- Config env var mapping works end-to-end with section-prefixed variables
- Plugin lifecycle hooks fire in the correct order with proper error handling
- `clawplug dev` regenerates artifacts on source file changes
- `clawplug validate` correctly identifies missing exports, manifest issues, and configuration errors
- `@clawplug/test` helpers allow testing tools with mock config without running an OpenClaw gateway
- Reusable GitHub Actions workflows succeed in a plugin repo
- Template repository can be created via "Use this template", builds, and passes tests
- `ARCHITECTURE.md` explains the internals for contributors
- Example plugin demonstrates a real external API integration
- MIT license on both repos
- READMEs clearly explain what each repo is and how they relate

## 10. Review and Verification Expectations

- `npm test` passes on both repos
- `npm run build` succeeds on template
- `npm pack` produces a valid tarball for the SDK
- TypeScript strict mode passes with no errors
- Generated CLI returns correct help output
- `clawplug validate` passes on template
- `git diff --check` passes
- Markdown renders cleanly in GitHub

## 11. Future Roadmap

### V1 — Plugin SDK and Template

- `definePlugin()` with TypeBox schemas and config sections
- Plugin lifecycle hooks
- Automatic result wrapping
- CLI generation
- Manifest generation
- `clawplug dev` watch mode
- `clawplug validate` publication checker
- `@clawplug/test` testing utilities
- Shared build configs
- Reusable GitHub Actions
- Template repository
- Architecture docs
- Example integration plugin

### V2 — Developer Experience

- Template variants for common patterns (API, database, webhook)
- Plugin analytics (opt-in)
- More granular error messages and debug mode
- Plugin configuration UI integration with OpenClaw settings panel

### V3 — Marketplace and Enterprise

- Plugin discovery metadata
- OAuth integration support
- Plugin dependency declarations
- Enterprise plugin signing/verification
- Private registry support

## 12. Final Product Promise

`clawplug` makes OpenClaw extensibility feel trivial.

Define your tools, build once, get an adapter, a CLI, and a manifest — all typed, all tested, all publishable. Plugin development should be about writing business logic, not wiring frameworks together.

# PRD: carapace-plugin-system

## Product Name

**carapace-plugin-system**

## Tagline

A plugin SDK and starter template for building typed OpenClaw plugins with zero boilerplate.

## One-Line Pitch

`carapace-plugin-system` lets developers define plugin tools and config in a single `src/plugin.ts` file and automatically get a fully typed OpenClaw adapter, a standalone CLI, and a plugin manifest — no registration boilerplate, no result-wrapping, no manifest maintenance.

## 1. Objective

Create a two-part OSS ecosystem for extending OpenClaw with third-party plugins:

- **carapace-plugin-sdk** — the core SDK: `definePlugin()` macro, TypeBox-driven config schemas, result-format wrapping, CLI generator, shared build configs, and reusable GitHub Actions workflows.
- **carapace-plugin-template** — a GitHub template repository that scaffolds a complete plugin project (CI, tests, build) in one click.

Together, they make adding a custom toolset to OpenClaw as easy as writing a single TypeScript file.

## 2. Core Product Principle

> Writing an OpenClaw plugin should feel like writing Express route handlers — define the shape, return the result, everything else is infrastructure.

The SDK eliminates the three biggest friction points in plugin development:

1. **Boilerplate** — no adapter setup, no manifest JSON to maintain, no CLI argument parsing.
2. **Type safety** — config schema drives TypeScript inference for both tool parameters and config fields.
3. **Standalone utility** — every plugin is automatically a testable, standalone CLI usable outside OpenClaw.

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

- <https://github.com/JeffSteinbok/carapace-plugin-sdk> — the SDK implementation
- <https://github.com/JeffSteinbok/carapace-plugin-template> — the template repository
- <https://github.com/JeffSteinbok/carapace-stock-quotes> — a real plugin example with Yahoo Finance + Finnhub

## 4. Repository Types

Two repositories, each with a distinct role:

### carapace-plugin-sdk (npm package + library)

TypeScript/Node library published to npm. Consumed as a dev and runtime dependency by plugin projects.

### carapace-plugin-template (GitHub template repository)

A minimal `Use this template` repository. Contains a fully working plugin project with CI, tests, and build — all configured to depend on the SDK.

Suggested GitHub topics:

- `openclaw-plugins`
- `carapace-sdk`
- `plugin-sdk`
- `typebox`
- `cli-generator`
- `developer-tools`
- `open-source`

## 5. Current V1 Surface Area

V1 covers the core SDK functionality and its companion template.

### carapace-plugin-sdk — Core Features

| Feature | What it does |
|---------|-------------|
| `definePlugin()` | TypeBox-driven plugin definition with config schema and tool list. Produces a `createEntry` factory. |
| Type inference | Tool parameters and config fields are fully inferred from the TypeBox schema — no casts, no `any`. |
| Result wrapping | `execute()` returns a plain object. SDK wraps it in the OpenClaw result format automatically. |
| Manifest generation (`carapace-generate-cli`) | Reads compiled plugin, extracts tool names, config schema, and generates `openclaw.plugin.json` + the standalone CLI. |
| Standalone CLI | Each tool becomes a subcommand. Supports `--json` flag, env var config mapping (`<PLUGIN_ID>_<FIELD>`). |
| Shared configs | `tsconfig.base.json`, `tsup` preset — one-line extends and three-line configs. |
| Reusable GitHub Actions | `plugin-ci.yml` and `plugin-release.yml` — no workflow logic to copy. |

### carapace-plugin-template — What it scaffolds

- `src/plugin.ts` — single entry point with example greet tool
- `tests/plugin.test.ts` — test file calling `createEntry()` directly via vitest
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
import { definePlugin } from "carapace-plugin-sdk";
import { Type } from "@sinclair/typebox";

export const createEntry = definePlugin({
  id: "my-plugin",
  name: "My Plugin",
  description: "Does something useful.",

  configSchema: Type.Object({
    apiKey: Type.Optional(Type.String({ description: "API key for the service." })),
  }),

  tools: (tool) => [
    tool({
      name: "do_thing",
      description: "Does the thing.",
      parameters: Type.Object({
        input: Type.String({ description: "Input value." }),
      }),
      execute: async ({ input }, config) => {
        return { result: input, usingKey: !!config.apiKey };
      },
    }),
  ],
});
```

That's the entire plugin. Build and you get adapter, CLI, and manifest.

## 6. V1 Requirements

V1 must:

- provide `definePlugin()` that accepts id, name, description, configSchema, and tools
- use TypeBox for all schema definitions (config + tool parameters)
- fully infer execute() parameter and return types from schemas
- automatically wrap execute() return values in OpenClaw result format
- generate `openclaw.plugin.json` manifest from the plugin definition
- generate a standalone CLI where each tool is a subcommand
- map config fields to env vars using `<PLUGIN_ID>_<FIELD>` convention
- support `--json` output flag on CLI subcommands
- ship shared `tsconfig.base.json` and `tsup` config preset
- provide reusable GitHub Actions workflows for CI and release
- include a template repository with working example, CI, tests, and build
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

- The type machinery behind `definePlugin`
- How `carapace-generate-cli` inspects the compiled plugin to extract metadata
- The CLI runtime and subcommand dispatch
- The adapter pattern for OpenClaw integration
- How result wrapping transforms plain objects into OpenClaw protocol format

### Real plugin examples

At least one full integration repo (like `carapace-stock-quotes`) demonstrating:

- Multiple data sources
- API key config
- Error handling strategies
- Testing patterns for external dependencies

## 8. Future Enhancements

### Plugin Marketplace Integration

The generated `openclaw.plugin.json` could include metadata for discovery:

- Author, homepage, repository URL
- Screenshots or usage examples
- Category tags for marketplace browsing
- Compatibility version ranges

### Plugin Configuration UI

The configSchema TypeBox schema could drive an OpenClaw settings UI:

- Form fields rendered from JSON Schema
- OAuth flow support for services requiring auth
- Connection test button in settings panel

### Plugin Testing Utilities

SDK could ship a testing helper:

```ts
import { testPlugin } from "carapace-plugin-sdk/testing";

const { tools } = testPlugin(createEntry, { apiKey: "test-key" });
const result = await tools.do_thing({ input: "hello" });
```

### Watch Mode for Local Development

`carapace-generate-cli --watch` could regenerate the CLI and manifest on source changes during development, so plugin authors don't need to rerun build manually for every change.

### Plugin Versioning and Dependency Management

Support for plugins declaring dependencies on other plugins or specific OpenClaw versions, loaded via the SDK's adapter.

### Template Variants

Additional template flavours beyond the basic one:

- `plugin-weather-template` — shows external API integration
- `plugin-database-template` — shows persistent storage patterns
- `plugin-webhook-template` — shows webhook/callback patterns

### Plugin Analytics (Opt-in)

Optional SDK integration for collecting anonymous usage data:

- Tool invocation counts
- Error rates per tool
- Config schema field usage

## 9. Acceptance Criteria

V1 is acceptable when:

- `definePlugin()` works with zero-config setup
- TypeScript inference flows correctly from TypeBox schemas through to execute() parameters
- `npm run build` generates adapter, CLI, and manifest without errors
- CLI subcommands return correct results in both human-readable and `--json` modes
- Config env var mapping works end-to-end
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
- `git diff --check` passes
- Markdown renders cleanly in GitHub

## 11. Future Roadmap

### V1 — Plugin SDK and Template

- `definePlugin()` with TypeBox schemas
- Automatic result wrapping
- CLI generation
- Manifest generation
- Shared build configs
- Reusable GitHub Actions
- Template repository
- Architecture docs
- Example integration plugin

### V2 — Developer Experience

- Plugin testing utilities
- Watch mode for local dev
- Template variants for common patterns
- Plugin analytics (opt-in)
- Error message improvements and debug mode

### V3 — Marketplace and Enterprise

- Plugin discovery metadata
- Settings UI generation from configSchema
- OAuth integration support
- Plugin dependency declarations
- Enterprise plugin signing/verification
- Private registry support

## 12. Final Product Promise

`carapace-plugin-system` makes OpenClaw extensibility feel trivial.

Define your tools, build once, get an adapter, a CLI, and a manifest — all typed, all tested, all publishable. Plugin development should be about writing business logic, not wiring frameworks together.

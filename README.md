# Homebrew Tap for Runwork

The official [Homebrew](https://brew.sh) tap for [Runwork](https://www.runwork.ai): the platform that makes teams AI-native.

Runwork connects your team's AI tools (Claude, Cursor, Codex, Windsurf, and more) to one shared workspace with skills, integrations, workflows, apps, data, and infrastructure. What one person figures out, everyone's AI can use. Your team's AI capability compounds instead of staying siloed.

This tap includes two packages:

| Package | Type | What it is |
|---------|------|------------|
| **`runwork`** | Formula (CLI) | Command-line interface for developing, previewing, and deploying Runwork apps |
| **`runwork-desktop`** | Cask (App) | Desktop companion that onboards your team, syncs workspaces, and launches AI tools |

---

## Install

### CLI

```bash
brew install runwork-ai/tap/runwork
```

Or add the tap first:

```bash
brew tap runwork-ai/tap
brew install runwork
```

### Desktop App

```bash
brew install --cask runwork-ai/tap/runwork-desktop
```

Or after tapping:

```bash
brew install --cask runwork-desktop
```

### Both

```bash
brew tap runwork-ai/tap
brew install runwork
brew install --cask runwork-desktop
```

---

## Upgrade

```bash
brew upgrade runwork
brew upgrade --cask runwork-desktop
```

---

## Runwork CLI

The CLI is the local development interface. You write TypeScript, and the platform handles deployment, infrastructure, AI, and integrations.

### Quick Start

```bash
runwork login          # Authenticate with your workspace
runwork init           # Create a new app
runwork dev            # Start developing with live cloud preview
```

### Commands

| Command | Description |
|---------|-------------|
| `runwork login` | Authenticate with your Runwork workspace |
| `runwork init` | Scaffold a new app from a template |
| `runwork dev` | Start local development with live cloud preview |
| `runwork deploy` | Deploy your app to production |
| `runwork sync` | Sync workspace configuration across your AI tools |
| `runwork setup` | Configure AI tool integrations (MCP servers, skills, instructions) |

### What You Get

When you create an app with `runwork init`, you get a full-stack TypeScript project with:

- **Entity storage:** Structured data with full CRUD, indexing, and cross-app access
- **Workflows:** Multi-step durable processes that survive restarts
- **Scheduled jobs:** Background tasks on any cron schedule
- **Public API endpoints:** Expose your app's functionality over HTTP
- **File storage:** Upload, download, and serve files from the cloud
- **AI agents:** Chat-based and headless task agents with sandbox execution
- **Integrations:** Connect to 3,200+ services (HubSpot, Slack, Google, Stripe, and more)
- **Components:** Reusable UI pieces shared across apps

Everything deploys to Cloudflare Workers. Zero infrastructure management.

---

## Runwork Desktop

The Desktop app is how your team gets set up with AI tools and stays connected to the shared workspace.

### What It Does

- **Onboards team members:** Guided setup that detects existing AI tools, installs recommended ones, and connects everything to the workspace
- **Syncs continuously:** Skills, MCP servers, team instructions, and workspace configuration stay current across all connected AI tools
- **System tray integration:** Quick access to launch any connected AI tool (Claude Code, Cursor, Codex, Windsurf, Gemini), open the workspace dashboard, trigger syncs, and check for updates
- **Stays out of the way:** Runs in the background, surfaces status through the menu bar, shows the main window only when you need it

### Supported AI Tools

The Desktop app connects these AI tools to your shared workspace:

- Claude Code
- Claude Desktop
- Cursor
- Codex
- Windsurf
- Gemini
- More added regularly

### System Requirements

- **macOS:** Apple Silicon (M1+) or Intel, macOS 10.13+
- **Linux:** x64, with WebKit2GTK 4.1+
- **Windows:** x64, Windows 10+

---

## Other Installation Methods

### CLI

| Method | Command |
|--------|---------|
| **Shell script** | `curl -fsSL https://runwork.ai/install.sh \| sh` |
| **npm** | `npm install -g runwork` |
| **Direct download** | [GitHub Releases](https://github.com/runwork-ai/cli/releases) |

### Desktop App

| Method | Source |
|--------|--------|
| **Direct download** | [GitHub Releases](https://github.com/runwork-ai/desktop/releases) |

---

## About Runwork

Runwork is the shared layer underneath your team's AI tools. Every AI tool your team uses connects to one workspace. Skills, integrations, workflows, and apps flow across every connected agent. One person creates something, every teammate's AI can use it.

The platform includes:

- **Web dashboard** for workspace management, team monitoring, and adoption tracking
- **Desktop app** for team onboarding and AI tool orchestration
- **CLI** for local development and deployment
- **Work cloud** that runs your apps, workflows, schedules, and agents 24/7
- **MCP servers** that give any compatible AI tool access to your workspace

### Community

- 90,000+ community skills and processes
- 11,000+ MCP tool connectors
- 8,000+ workflow recipes
- 3,200+ integrations

### Links

- [Runwork Platform](https://www.runwork.ai)
- [CLI Repository](https://github.com/runwork-ai/cli)
- [Desktop Repository](https://github.com/runwork-ai/desktop)
- [`@runworkai/framework`](https://www.npmjs.com/package/@runworkai/framework) on npm

## License

MIT
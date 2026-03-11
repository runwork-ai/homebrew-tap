# Homebrew Tap for Runwork

The official [Homebrew](https://brew.sh) tap for [Runwork](https://www.runwork.ai) CLI.

## Install

```bash
brew install runwork-ai/tap/runwork
```

Or add the tap first, then install:

```bash
brew tap runwork-ai/tap
brew install runwork
```

## Upgrade

```bash
brew upgrade runwork
```

## What is Runwork?

Runwork is an AI workspace that brings AI agents, custom apps, and human teams into one place. The CLI is the local development interface -- you write TypeScript, and the platform handles deployment, infrastructure, AI, and integrations.

### Quick Start

```bash
runwork login          # Authenticate with Runwork
runwork init           # Create a new app
runwork dev            # Start developing with live preview
```

## Other Installation Methods

| Method | Command |
|--------|---------|
| **Shell script** | `curl -fsSL https://runwork.ai/install.sh \| sh` |
| **npm** | `npm install -g runwork` |
| **Direct download** | [GitHub Releases](https://github.com/runwork-ai/cli/releases) |

## Links

- [Runwork Platform](https://www.runwork.ai)
- [CLI Repository](https://github.com/runwork-ai/cli)
- [`@runworkai/framework`](https://www.npmjs.com/package/@runworkai/framework) -- The TypeScript framework for building Runwork apps

## License

MIT

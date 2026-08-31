# EdgeSentry Homebrew Tap

```bash
brew tap edgesentry/tap
```

## Formulae

| Formula | Description |
|---------|-------------|
| [`eds`](Formula/eds.rb) | EdgeSentry audit / IFC inspection CLI ([edgesentry-rs](https://github.com/edgesentry/edgesentry-rs)) |
| [`ontographia`](Formula/ontographia.rb) | Ontology → Intent → Cypher 25 CLI ([ontographia](https://github.com/edgesentry/ontographia)) |

### Install

```bash
brew install eds
brew install ontographia
```

### Supported platforms

Binary formulae ship pre-built releases for **macOS Apple Silicon** and **Linux x86_64** (same matrix as GitHub Releases). Intel Mac and Linux arm64: use `cargo install ontographia-cli` or download assets from [Releases](https://github.com/edgesentry/ontographia/releases).

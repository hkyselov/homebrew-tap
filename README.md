# Homebrew tap for Copybara

Personal [Homebrew](https://brew.sh) tap for [Copybara](https://github.com/hkyselov/copybara), a lightweight clipboard manager for the macOS menu bar.

## Install

```bash
brew install --cask hkyselov/tap/copybara --no-quarantine
```

`--no-quarantine` is recommended: Copybara is not notarized, and the flag skips the Gatekeeper "Open Anyway" step on first launch.

## Update

```bash
brew upgrade --cask copybara
```

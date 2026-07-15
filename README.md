# Homebrew tap for Copybara

Personal [Homebrew](https://brew.sh) tap for [Copybara](https://github.com/hkyselov/copybara), a lightweight clipboard manager for the macOS menu bar.

## Install

```bash
brew install --cask hkyselov/tap/copybara
```

Copybara is not notarized, so macOS blocks the first launch. Either approve it under **System Settings → Privacy & Security → "Open Anyway"**, or clear the quarantine flag after installing:

```bash
xattr -cr /Applications/Copybara.app
```

(Homebrew used to offer `--no-quarantine` to skip this, but the flag was removed in Homebrew 6.)

## Update

```bash
brew upgrade --cask copybara
```

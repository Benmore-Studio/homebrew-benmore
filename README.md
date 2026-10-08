# Benmore Homebrew tap

Homebrew casks for the Benmore CLI on macOS and Linux. The `benmore` and `benmore-cli` casks install the same `benmore` executable; choose one package name.

```sh
brew tap benmore-studio/benmore
brew install --cask benmore
```

Or install the explicitly named cask after tapping:

```sh
brew install --cask benmore-cli
```

The casks download versioned archives from [Benmore CLI releases](https://github.com/Benmore-Studio/benmore-cli/releases) and verify each archive with its SHA-256 checksum. `benmore` is the short package name; `benmore-cli` is an alias for users who prefer an explicit CLI name.

Upgrade or uninstall with:

```sh
brew upgrade --cask benmore
brew uninstall --cask benmore
```

This tap contains only Homebrew casks. It does not install Benmore framework source or manage app deployments.

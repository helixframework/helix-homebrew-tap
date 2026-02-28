# helix-homebrew-tap

Homebrew tap for the Helix CLI.

## Install

```bash
brew tap helixframework/helix-homebrew-tap
brew install helix
```

## Upgrade

```bash
brew update
brew upgrade helix
```

## Uninstall

```bash
brew uninstall helix
brew untap helixframework/helix-homebrew-tap
```

## Formula

- `Formula/helix.rb`

The formula installs the `helix` executable from the `helix-cli.zip` GitHub release asset.

## Maintainers

Release updates are automated from the main Helix repository workflow:

- `helix/.github/workflows/release-homebrew-tap.yml`

That workflow updates `Formula/helix.rb` with the latest release URL and SHA256.

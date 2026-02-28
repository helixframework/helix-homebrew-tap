# helix-homebrew-tap

Homebrew tap for Helix tooling.

## Install

```bash
brew tap helixframework/helix-homebrew-tap
brew install helix
brew install helix-dev
```

## Upgrade

```bash
brew update
brew upgrade helix
brew upgrade helix-dev
```

## Uninstall

```bash
brew uninstall helix
brew uninstall helix-dev
brew untap helixframework/helix-homebrew-tap
```

## Formula

- `Formula/helix.rb`
- `Formula/helix-dev.rb`

Formulas:

- `helix` installs the `helix` executable from the `helix-cli.zip` GitHub release asset.
- `helix-dev` installs the `helix-dev` onboarding command from the Helix `main` source archive.

## Maintainers

Release updates are automated from the main Helix repository workflow:

- `helix/.github/workflows/release-homebrew-tap.yml`

That workflow updates `Formula/helix.rb` with the latest release URL and SHA256.

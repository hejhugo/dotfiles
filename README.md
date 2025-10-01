# My dotfiles

Full of dot goodness

This dotfiles uses **yadm** (Yet Another Dotfiles Manager) to manage dotfiles directly in `$HOME`.

## Installation

One-line install:
```bash
curl -fsSL https://raw.githubusercontent.com/hejhugo/dotfiles/main/setup.sh | bash
```

Or manual:
```bash
curl -o setup.sh https://raw.githubusercontent.com/hejhugo/dotfiles/main/setup.sh
chmod +x setup.sh
./setup.sh
```

The setup script will:
1. Install Xcode Command Line Tools (if needed)
2. Install Homebrew (if needed)
3. Install yadm and clone this repo to `$HOME`
4. Run bootstrap script (installs packages, configures macOS, installs zsh plugins)

## What's Included

- **Shell**: Zsh with Oh-My-Zsh, enhanced plugins (autosuggestions, syntax-highlighting)
- **History**: 100k searchable entries with timestamps
- **Tools**: Homebrew bundle, Starship prompt, rbenv, 1Password CLI
- **macOS**: Sensible defaults (fast key repeat, Finder tweaks, screenshot location)

## Secrets Management

This configuration uses **1Password CLI** for secrets. Never commit actual secrets to this repo.

For machine-specific secrets not in 1Password, create `~/.zsh/secrets.zsh` (already in .gitignore).

## Updating

```bash
yadm pull
yadm bootstrap  # Re-run bootstrap if needed
```

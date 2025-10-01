# 🏠 Dotfiles

> Personal macOS development environment configuration managed with [yadm](https://yadm.io)

## ✨ Features

### 🐚 Shell Experience
- **Zsh** with Oh-My-Zsh framework
- **Smart plugins**: autosuggestions, syntax highlighting, git shortcuts
- **100k history entries** with timestamps and cross-session sharing
- **Lazy-loaded NVM** for fast shell startup
- Tools: fzf, rbenv, windmill, qlty

### 🛠️ Development Tools
- **Homebrew** package manager with bundle support
- **1Password CLI** for secure secrets management
- **Git configuration** with sensible defaults
- **Starship prompt** with compact two-line display

### 🎨 macOS Customizations
- Fast key repeat for vim users
- Finder tweaks (show hidden files, full path, all drives)
- Clean Dock (no default apps)
- Screenshots saved to `~/Pictures/Screenshots`
- Hot corners configured

---

## 🚀 Quick Start

### New Machine Setup

Run this one command to set up everything:

```bash
curl -fsSL https://raw.githubusercontent.com/hejhugo/dotfiles/main/setup.sh | bash
```

**What happens:**
1. ✅ Installs Xcode Command Line Tools
2. ✅ Installs Homebrew
3. ✅ Installs yadm and clones dotfiles to `$HOME`
4. ✅ Runs bootstrap (packages, macOS config, zsh plugins)
5. ✅ Reloads shell with new configuration

### Manual Installation

If you prefer to review before running:

```bash
curl -o setup.sh https://raw.githubusercontent.com/hejhugo/dotfiles/main/setup.sh
chmod +x setup.sh
./setup.sh
```

---

## 🔒 Secrets Management

This repo uses **1Password CLI** for managing secrets securely.

### For Secrets in 1Password

Use `op://` references in your config:
```bash
export GITHUB_TOKEN="op://Personal/Github/token"
```

### For Local Machine Secrets

Create `~/.zsh/secrets.zsh` for machine-specific secrets not in 1Password:

```bash
# ~/.zsh/secrets.zsh
export MY_SECRET_KEY="value"
export ANOTHER_TOKEN="value"
```

This file is already in `.gitignore` and will never be committed.

---

## 🔄 Daily Usage

### Check Status
```bash
yadm status
```

### Track New Files
```bash
yadm add .zshrc
yadm commit -m "Update shell config"
yadm push
```

### Pull Latest Changes
```bash
yadm pull
```

### Re-run Setup Scripts
```bash
yadm bootstrap  # Re-install packages and plugins
```

### Update All Tools
```bash
alias brewski  # Updates Homebrew, mas, oh-my-zsh, and reloads shell
```

---

## 📦 What's Included

### Configuration Files
- `.zshrc` - Shell configuration
- `.zshenv` - Environment variables and PATH
- `.gitconfig` - Git settings
- `.gitignore_global` - Global gitignore patterns
- `.Brewfile` - Homebrew packages and applications

### Custom Scripts
- `.zsh/aliases.zsh` - Shell aliases
- `.zsh/zsh_functions` - Custom shell functions
- `.config/yadm/bootstrap` - Automated setup script
- `.config/starship.toml` - Starship prompt config

---

## 🎯 Philosophy

- **Reproducible**: One command to set up a new machine
- **Secure**: Secrets never committed, always use 1Password or local files
- **Fast**: Lazy-loading and optimizations for quick shell startup
- **Organized**: Clear structure, well-documented

---

## 📝 Notes

- The `secrets.zsh` file is ignored by git but sourced if it exists
- First shell launch may be slow while plugins install
- Some macOS settings require logout/restart to take effect
- **Starship prompt** shows: directory → git branch → git status on a compact two-line layout
- Customize freely - this is your environment!

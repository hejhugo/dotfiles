# My dotfiles

Full of dot goodness

This dotfiles uses `yadm` stands for Yet Another Dotfiles Manager.

## Installation
Download setup script
```
curl -o setup.sh https://raw.githubusercontent.com/hejhugo/dotfiles/main/setup.sh
```
Grant access
```
chmod +x setup.sh
```
and execute it with
```
./setup.sh
```

## Required plugins

Install these Oh-My-Zsh plugins for the best experience:

```bash
# zsh-autosuggestions (Fish-like suggestions)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting (Real-time command validation)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Secrets Management

This configuration uses 1Password CLI for secrets. Never commit actual secrets to this repo.

For machine-specific secrets not in 1Password, create `~/.zsh/secrets.zsh` (already in .gitignore).

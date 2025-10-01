# Cargo (Rust)
. "$HOME/.cargo/env"

# PATH management - add user-specific paths (homebrew paths are added by brew shellenv in .zshrc)
typeset -U path  # Ensure unique entries in PATH
path=(
  $HOME/.local/bin
  $HOME/.qlty/bin
  $HOME/.codeium/windsurf/bin
  $HOME/.cache/lm-studio/bin
  $path
)

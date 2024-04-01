#!/bin/bash

# Check if command line tools for Xcode are installed, install if we don't have it
if ! xcode-select -p &>/dev/null; then
    echo "Installing Xcode Command Line Tools..."
    xcode-select --install
    # Wait until the Xcode Command Line Tools are installed
    until xcode-select -p &>/dev/null; do
        sleep 5
    done
fi

# Check if Homebrew is installed, install if we don't have it
if test ! $(which brew); then
    echo "Installing Homebrew..."
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add Homebrew to PATH in .zshrc if not already present
if ! grep -q '/opt/homebrew/bin/brew' ~/.zshrc; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
fi
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install yadm using Homebrew and clone this dotfiles repository
brew install yadm
yadm clone https://github.com/hejhugo/dotfiles

# Execute the bootstrap script if it exists
bootstrap_script="$HOME/.config/yadm/bootstrap"
if [ -f "$bootstrap_script" ]; then
    echo "Running bootstrap script..."
    chmod +x "$bootstrap_script"
    "$bootstrap_script"
else
    echo "No bootstrap script found. Skipping this step."
fi

source ~/.zshrc
echo "Setup completed!"

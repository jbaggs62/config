#!/bin/bash

# List of Brew packages and Casks
brew_packages=(
    ca-certificates
    kubernetes-cli
    ncurses
    openssl@3
    tmux
    k9s
    libevent
    nushell
    starship
    utf8proc
)

brew_casks=(
    alacritty
    font-inconsolata-nerd-font
    font-3270-nerd-font
    font-iosevka-nerd-font
    # Add more Cask names here
    visual-studio-code
    font-inconsolata-go-nerd-font
    font-inconsolata-lgc-nerd-font
)

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew and its formulae
brew update

# Upgrade existing packages
brew upgrade

# Install Brew packages
for package in "${brew_packages[@]}"; do
    brew install "$package"
done

# Install Brew Casks
for cask in "${brew_casks[@]}"; do
    brew install --cask "$cask"
done

echo "All Brew packages and Casks installed or updated."

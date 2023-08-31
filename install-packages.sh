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
    font-jetbrains-mono-nerd-font
    font-monofur-nerd-font
    visual-studio-code
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

# Package Explanation
echo -e "\nPackage Explanation:"
echo "---------------------"
echo "ca-certificates - Common CA certificates"
echo "kubernetes-cli - Kubernetes command-line tool"
echo "ncurses - Text-based UI library"
echo "openssl@3 - Cryptography and SSL/TLS toolkit"
echo "tmux - Terminal multiplexer"
echo "k9s - Kubernetes CLI to manage clusters"
echo "libevent - Event notification library"
echo "nushell - Modern shell for the GitHub era"
echo "starship - Shell prompt with customization"
echo "utf8proc - Unicode processing library"
echo "alacritty - GPU-accelerated terminal emulator"
echo "visual-studio-code - Code editor by Microsoft"

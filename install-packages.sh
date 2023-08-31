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
echo "font-inconsolata-nerd-font - Nerd Font patched Inconsolata font"
echo "font-3270-nerd-font - Nerd Font patched 3270 font"
echo "font-iosevka-nerd-font - Nerd Font patched Iosevka font"
echo "visual-studio-code - Code editor by Microsoft"
echo "font-inconsolata-go-nerd-font - Nerd Font patched Inconsolata Go font"
echo "font-inconsolata-lgc-nerd-font - Nerd

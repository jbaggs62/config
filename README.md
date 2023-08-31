# Setup New Laptop

Welcome to my Laptop Config Guide

## Installation Options

### Option 1: Manual Package Installation

1. Start by installing Homebrew:
   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
   ```
2. Once Homebrew is installed, you can proceed to install individual packages as needed.

### Option 2: Automated Installation with Bash Script

1. Run the following command to execute the installation script: 
   ```bash
   sh install-packages.sh
   ```
   *This script automates the installation of Homebrew and all the required packages. You can skip install packages manually down below in the instructions if you chose to use my bash script*

## Configuring Alacritty Terminal

1. Install Alacritty using Homebrew:
   ```bash
   brew install alacritty
   ```
2. Configure Alacritty by following this helpful video tutorial:
   [Alacritty Configuration Tutorial](https://www.youtube.com/watch?v=76GbxnD8wnM).

## Installing Nerd Fonts

1. Install Nerd Fonts for improved terminal aesthetics:
   [Nerd Fonts Installation Guide](https://www.geekbits.io/how-to-install-nerd-fonts-on-mac/).

## Setting Up Alacritty Colors

1. Customize your Alacritty terminal colors with the help of this theme configuration guide:
   [Alacritty Theme Configuration](https://github.com/alacritty/alacritty-theme).

## Installing and Configuring Tmux

1. Install Tmux using Homebrew:
   ```bash
   brew install tmux
   ```
2. Enhance your Tmux productivity with these useful shortcuts:
   [Tmux Shortcuts Cheat Sheet](https://gist.github.com/MohamedAlaa/2961058).
3. Configure Tmux to start automatically in your Alacritty configuration file (alacritty.yaml):
   ```yaml
   shell:
       program: /bin/zsh
       args:
       - -l
       - -c
       - "tmux attach || tmux"
   ```

## Integrating Starship

1. Install and configure the Starship prompt by following the steps in the official guide:
   [Starship Configuration Guide](https://starship.rs/guide/).

## Exploring Window Management

Discover efficient window management with Rectangle, a windows manager for macOS:
[Rectangle Window Manager](https://rectangleapp.com).

## Explanation of Installed Packages

Here's a breakdown of the packages and casks installed using the provided bash script (`install-packages.sh`):

#### Brew Packages:

- **ca-certificates:** Common CA certificates for secure communication.
- **kubernetes-cli:** Command-line tool for managing Kubernetes clusters.
- **ncurses:** Text-based user interface library for terminal applications.
- **openssl@3:** Cryptography and SSL/TLS toolkit for secure communication.
- **tmux:** Terminal multiplexer for managing multiple terminal sessions.
- **k9s:** Command-line interface for interacting with Kubernetes clusters.
- **libevent:** Event notification library for asynchronous I/O.
- **nushell:** Modern shell designed for the GitHub era.
- **starship:** Customizable shell prompt for enhancing your terminal experience.
- **utf8proc:** Unicode processing library for efficient character encoding.

#### Brew Casks:

- **alacritty:** GPU-accelerated terminal emulator for faster performance.
- **visual-studio-code:** Powerful code editor developed by Microsoft for various programming languages.


These packages and casks have been carefully chosen to optimize your development environment and enhance your coding experience.

With these steps completed, your laptop will be optimized for development, offering a seamless and productive experience. Happy coding!
```

Feel free to adjust the formatting or wording as needed to fit your personal style and preferences.
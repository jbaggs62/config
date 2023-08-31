Setup New Laptop

1. Install brew
2. Install Alacritty with brew
    * ``` brew install alacritty```
    * Configure it
        * https://www.youtube.com/watch?v=76GbxnD8wnM
3. Install nerd fonts 
    * https://www.geekbits.io/how-to-install-nerd-fonts-on-mac/
4. Configure colors for Alacritty
    * https://github.com/alacritty/alacritty-theme
5. Install Tmux  
    * ``` brew install tmux```
    * https://gist.github.com/MohamedAlaa/2961058 - Tmux short cuts
    2. Configure Tmux to start in Alacritty.yaml
        ```
        shell:
            program: /bin/zsh
            args:
            - -l
            - -c
            - "tmux attach || tmux"
        ```
6. Install starship
    * configure starship toml
        * https://starship.rs/guide/

# Dotfiles

This repo contains all of my default dotfile cofigurations for different apps/shells. Configuration includes:

- `.config`:
  - `nvim`
  - `alacritty`
- `.vimrc`
- `.zshrc`
- `.tmux.config`
- `oh-my-zsh` and it's related plugins
- `p10k` config

The root directory contains an automated install script `install.sh` to install the related software. Also, `stow` is used in `link.sh` to create symlinks between the config files in the repo and the actual dotfiles in the home directory. Simply run `./install.sh` to install and link the config files.

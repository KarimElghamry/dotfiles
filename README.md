# Dotfiles

Personal dotfiles for a productive development environment.

## Directory Structure

```
dotfiles/
├── config/.config/   # Neovim, Alacritty
├── tmux/             # Tmux configuration
├── vim/              # Vim configuration
├── zsh/              # Zsh, Oh My Zsh, Powerlevel10k
├── scripts/          # Utility scripts
├── install.sh        # Automated installation
└── link.sh           # Symlink creation with Stow
```

## Configurations

| Component     | Description                                                                   |
| ------------- | ----------------------------------------------------------------------------- |
| **Neovim**    | Lua-based config with LSP, Treesitter, Telescope, cmp, lazy.nvim, Tokyo Night |
| **Alacritty** | GPU terminal with Tokyo Night theme, FiraMono Nerd Font                       |
| **Tmux**      | Tokyo Night Storm theme, vim keybindings, TPM, prefix `Ctrl+a`                |
| **Zsh**       | Oh My Zsh, Powerlevel10k, autosuggestions, syntax-highlighting, fzf, vi mode  |
| **Vim**       | Classic .vimrc for quick editing                                              |

## Quick Start

```bash
./install.sh
```

This installs all dependencies and links dotfiles.

## Post-Install

1. Restart shell
2. Run `p10k configure` for prompt setup
3. Open Neovim to install plugins
4. In tmux: `Ctrl+a + I` to install TPM plugins

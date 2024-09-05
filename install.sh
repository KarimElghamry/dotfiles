#!/bin/bash

# ---------- Tooling ---------- #

# install curl
sudo apt-get install curl -y

# install nvim
sudo curl -L https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -o /tmp/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf /tmp/nvim-linux64.tar.gz

# install nvim_packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install tmux and related plugins
sudo apt-get install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install xclip
sudo apt-get install xclip -y

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# install ripgrep
sudo apt-get install ripgrep -y

# ---------- languages and runtimes ---------- #

# install node 20 & npm
wget https://nodejs.org/dist/v20.14.0/node-v20.14.0-linux-x64.tar.xz -O /tmp/node.tar.xz
sudo tar -xf /tmp/node.tar.xz --one-top-level -C /usr/local/

# install go 1.22.4
wget https://go.dev/dl/go1.22.4.linux-amd64.tar.gz -O /tmp/go.tar.gz
sudo tar -xf /tmp/go.tar.gz --one-top-level -C /usr/local/

# ---------- shell ---------- #

# install zsh and set as default shell
sudo apt-get install zsh -y
chsh -s $(which zsh)

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# link dotfiles
chmod +x ./link.sh
exec ./link.sh

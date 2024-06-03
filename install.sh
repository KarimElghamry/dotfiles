#!/bin/bash
# install nvim
curl -L https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -o /tmp/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf /tmp/nvim-linux64.tar.gz

# install nvim_packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install tmux and related plugins
sudo apt-get install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

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

# install xclip
sudo apt-get install xclip -y

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# copy scripts
for file in ./scripts/*.sh;
do
    chmod $file
    sudo cp $file /usr/local/bin
done

# link dotfiles
chmod +x ./link.sh
exec ./link.sh

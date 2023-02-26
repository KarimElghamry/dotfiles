# install vim and related plugins
sudo apt-get install vim -y
mkdir -p ~/.vim/colors/
wget https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim -P ~/.vim/colors/
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki
vim -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit

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

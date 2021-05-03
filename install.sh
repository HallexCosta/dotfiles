echo "Import envrionment variables"
SSH_EMAIL="hallex.costa@hotmail.com"
#source ~/dotfiles/env.sh

# VIM OR NEOVIM
echo "Symlinking things:"

# ln -s ~/dotfiles/.gitconfig ~/.gitconfig
# ln -s ~/dotfiles/.zshrc ~/.zshrc

echo "Restarting .zshrc file..."
source ~/.zshrc

echo "Done!"

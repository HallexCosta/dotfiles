echo "Import envrionment variables"
SSH_EMAIL=""
#source ~/dotfiles/env.sh

# VIM OR NEOVIM
echo "Symlinking things:"

# ln -s ~/dotfiles/.gitconfig ~/.gitconfig
# ln -s ~/dotfiles/.zshrc ~/.zshrc

# BINARIES
echo "Installing binaries:"

echo "Updating apt-get packages..."
sudo apt-get update

echo "Installing NeoVim..."
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update

echo "Installing Neovim Sofi..." 
mkdir $HOME/.config/nvim
git clone https://github.com/HallexCosta/nvim.git $HOME/.config/nvim

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

echo "Create SSH Key..."
ssh-keygen -t rsa -b 4096 -C $SSH_EMAIL

echo "Installing Zsh shell..."
sudo apt install zsh

echo "Installing Zinit..."
mkdir $HOME/.zinit-config
git clone https://github.com/HallexCosta/zinit.git $HOME/.zinit-config

# echo "Installing Zplug..."
# mkdir $HOME/.zplug-config
# command git clone https://github.com/HallexCosta/zplug.git $HOME/.zplug-config

echo "Making Zsh the default shell..."
chsh -s $(which zsh)

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# echo "Rename default .zshrc to .zshrc.orig..."
# mv ~/.zshrc ~/.zshrc.orig

# echo "Copyging .zshrc configured..."
# cp ~/dotfiles/.zshrc ~ 

rm -rf ~/'~'

echo "Restarting .zshrc file..."
source ~/.zshrc

echo "Done!"

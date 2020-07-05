# VIM OR NEOVIM
echo "Symlinking things:"

ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.zshrc ~/.zshrc

# BINARIES
echo "Installing binaries:"

echo "Updating apt-get packages"
echo <yourpassword> | command sudo apt-get update

#echo "Installing chrome"

#echo "Installing VS Code"

echo "Making Zsh the default shell"
echo <yourpassword> | command chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing NeoVim"
echo | command sudo add-apt-repository ppa:neovim-ppa/stable
echo <yourpassword> | command sudo apt-get update

echo "Installing Zinit"
command mkdir $HOME/.zinit-config
command git clone https://github.com/HallexCosta/zinit.git $HOME/.zinit-config

# echo "Installing Zplug"
# command mkdir $HOME/.zplug-config
# command git clone https://github.com/HallexCosta/zplug.git $HOME/.zplug-config

echo "Installing settings and plugins NeoVim"
command mkdir $HOME/.config/nvim
command git clone https://github.com/HallexCosta/nvim.git $HOME/.config/nvim

echo "Installing NVM"
command curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo "Done!"

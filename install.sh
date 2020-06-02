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

echo "Done!"

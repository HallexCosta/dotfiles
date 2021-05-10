echo ""
echo "Installing Zsh shell..."
sudo apt install zsh

echo ""
echo "Installing Zinit..."
mkdir $HOME/.zinit-config
git clone https://github.com/HallexCosta/zinit.git $HOME/.zinit-config

# echo "Installing Zplug..."
# mkdir $HOME/.zplug-config
# command git clone https://github.com/HallexCosta/zplug.git $HOME/.zplug-config

echo ""
echo "Making Zsh the default shell..."
chsh -s $(which zsh)

echo ""
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Done!"

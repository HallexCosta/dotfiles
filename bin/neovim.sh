echo "Installing NeoVim..."
sudo apt install neovim

echo "Installing Neovim Sofi by Hállex..." 
mkdir $HOME/.config/nvim
git clone https://github.com/HallexCosta/nvim.git $HOME/.config/nvim

echo "Done!"

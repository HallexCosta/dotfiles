echo "Installing NeoVim..."
sudo apt install neovim

echo "\nInstalling Neovim Sofi by Hállex..." 
mkdir $HOME/.config/nvim
git clone https://github.com/HallexCosta/nvim.git $HOME/.config/nvim

echo "\nDone!"

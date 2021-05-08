# BINARIES
echo "Configure binaries:"

echo "Enable the Yarn repository GPG Key..."
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "Add the Yarn APT repository..."
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo "Add neovim/stable APT repository..."
sudo add-apt-repository ppa:neovim-ppa/stable

echo "Updating APT packages..."
sudo apt-get update

echo "Install C Compilar GCC"
sudo apt install build-essential 

echo "Done!"

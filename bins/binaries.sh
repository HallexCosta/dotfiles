# BINARIES
echo "Configure binaries:"

echo ""
echo "Enable the Yarn repository GPG Key..."
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo ""
echo "Add the Yarn APT repository..."
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo ""
echo "Add neovim/stable APT repository..."
sudo add-apt-repository ppa:neovim-ppa/stable

echo ""
echo "Updating APT packages..."
sudo apt-get update

echo ""
echo "Install C Compilar GCC"
sudo apt install build-essential 

echo ""
echo "Installing pip3..."
sudo apt install python3-pip

echo "Done!"

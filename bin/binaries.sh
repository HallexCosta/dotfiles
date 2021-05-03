# BINARIES
echo "Configure binaries:"

echo "\nEnable the Yarn repository GPG Key..."
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "\nAdd the Yarn APT repository..."
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo "\Add neovim/stable APT repository..."
sudo add-apt-repository ppa:neovim-ppa/stable

echo "\nUpdating APT packages..."
sudo apt-get update

echo "\nDone!"

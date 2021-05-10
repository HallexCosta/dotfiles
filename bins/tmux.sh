echo ""
echo "Verify if tmux was installed"
if [[ $TMUX_UNINSTALLED == "" ]]; then
  echo "Uninstalling tmux..."
  sudo apt remove tmux
fi 

echo ""
echo "Clonning repo tmux..."
git clone https://github.com/tmux/tmux.git $ROOT_DIR/tmp/tmux

echo ""
echo "Goto to directory tmux repo cloned"
cd $ROOT_DIR/tmp/tmux

echo ""
echo "Installing libs..."
sudo apt install automake libevent-dev ncurses-dev build-essential bison pkg-config

echo ""
echo "Compiling Tmux..."
sh autogen.sh

echo ""
echo "Configuring Tmux..."
./configure

echo ""
echo "Building and Installing Tmux..."
make && sudo make install

echo ""
echo "Removing Tmux cloned..."
rm -rf $ROOT_DIR/tmp/tmux

echo ""
printf "Version: "
tmux -V

echo "Done!"




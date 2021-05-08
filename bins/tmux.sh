echo "Verify if tmux was installed"
if [[ $TMUX_UNINSTALLED == "" ]]; then
  echo "Uninstalling tmux..."
  sudo apt remove tmux
fi 

echo "Clonning tmux..."

echo "ROOTDIR: $ROOT_DIR/temp/tmux"
curl -L -o $ROOT_DIR/temp/tmux-$TMUX_VERSION.tar.gz https://github.com/tmux/tmux/releases/download/$TMUX_VERSION/tmux-$TMUX_VERSION.tar.gz

echo "Extracting...."
tar xvf $ROOT_DIR/temp/tmux-$TMUX_VERSION.tar.gz -C $ROOT_DIR/temp

echo "Installing libs..."
sudo apt install automake libevent-dev

echo "Compiling Tmux..."
bash $ROOT_DIR/temp/tmux/autogen.sh

echo "Building Tmux..."
$ROOT_DIR/temp/tmux/configure
make -C $ROOT_DIR/temp/tmux

echo "Installing Tmux..."
sudo make -C $ROOT_DIR/temp/tmux install

echo "Removing Tmux cloned..."
#rm -rf $ROOT_DIR/temp/tmux

printf "Version: "
tmux -V

echo "Done!"


echo "Verify if tmux was installed"

if [[ $TMUX_UNINSTALLED == "" ]]; then
  echo "Uninstalling tmux..."
  sudo apt remove tmux
fi 

echo "Clonning tmux..."

git clone https://github.com/tmux/tmux.git $ROOT_DIR/temp/tmux
cd $ROOT_DIR/temp/tmux

echo "Installing libs..."
sudo apt install automake libevent-dev

echo "Compiling..."
bash $ROOT_DIR/temp/tmux/autogen.sh

echo "Building Tmux..."
$ROOT_DIR/temp/tmux/configure
make -C $ROOT_DIR/temp/tmux

echo "Installing Tmux..."
sudo make -C $ROOT_DIR/temp/tmux install

# echo "Removing Tmux cloned..."
# rm -rf $ROOT_DIR/temp/tmux

printf "Version: "
tmux -V

echo "Done!"


echo "Downloading..."
# wget https://github.com/tmux/tmux/releases/download/$TMUX_VERSION/tmux-$TMUX_VERSION.tar.gz
curl -L -o $ROOT_DIR/temp/tmux-$TMUX_VERSION.tar.gz https://github.com/tmux/tmux/releases/download/$TMUX_VERSION/tmux-$TMUX_VERSION.tar.gz

echo "Root directory: $ROOT_DIR"

echo "Extracting...."
tar xvf $ROOT_DIR/temp/tmux-$TMUX_VERSION.tar.gz -C $ROOT_DIR/temp

echo "Installing libs..."
sudo apt install libevent-dev ncurses-dev build-essential bison pkg-config

echo "Building Tmux..."
cd $ROOT_DIR/temp/tmux-$TMUX_VERSION
$ROOT_DIR/temp/tmux-$TMUX_VERSION/configure
make -C $ROOT_DIR/temp/tmux-$TMUX_VERSION

echo "Installing Tmux..."
sudo make install

echo "Removing file tmux-$TMUX_VERSION.tar.gz downloaded..."
rm $ROOT_DIR/temp/tmux-$TMUX_VERSION.tar.gz

echo "Removing folder tmux-$TMUX_VERSION downloaded..."
rm -rf $ROOT_DIR/temp/tmux-$TMUX_VERSION

printf "Version: "
tmux -V

echo "Done!"


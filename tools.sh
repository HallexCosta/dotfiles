echo "Import envrionment variables"
source ./configs/.env

echo "Initializing auto-install tools.."
source $BINS_DIR/binaries.sh
source $BINS_DIR/nvm.sh
source $BINS_DIR/node-and-npm.sh
source $BINS_DIR/yarn.sh
source $BINS_DIR/neovim.sh
source $BINS_DIR/tmux.sh
source $BINS_DIR/ssh.sh

echo "Done!"

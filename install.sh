echo "Import envrionment variables"
source ./configs/.env

echo "Initializing auto-install tools, shell and shell-theme..."
source $BINS_DIR/tools.sh
source $BINS_DIR/shell.sh
source $BINS_DIR/shell-theme.sh

echo "Done!"

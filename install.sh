echo "Import envrionment variables"
source ./configs/.env

echo "Initializing auto-install tools, shell and shell-theme..."
source ./tools.sh
source ./shell.sh
source ./shell-theme.sh

echo "Done!"

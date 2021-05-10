echo ""
echo "Create SSH Key [$SSH_EMAIL]..."
ssh-keygen -t rsa -b 4096 -C $SSH_EMAIL

echo "Done!"

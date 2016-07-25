# load gpg agent info, if available
echo "Loading gpg-agent info..."
if [ -r ~/.gpg-agent-info ]; then
    source ~/.gpg-agent-info
fi

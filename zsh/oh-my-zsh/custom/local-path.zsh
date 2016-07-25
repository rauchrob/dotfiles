LOCALBIN=~/.local/bin

if ! echo $PATH | grep -q $LOCALBIN; then
  export PATH=$LOCALBIN:$PATH
fi

MAC_ZSH_FPATH=/usr/local/Cellar/zsh-completions/0.20.0/share/zsh-completions

if [ -d $MAC_ZSH_FPATH ]; then
  fpath=($MAC_ZSH_FPATH $fpath)
fi

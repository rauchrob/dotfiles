if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
  export WORKON_HOME=~/.venvs
fi

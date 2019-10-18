ANACONDA_PATH="/home/rauch/.anaconda3"

if [ -d "$ANACONDA_PATH" ]; then
  __conda_setup="$('${ANACONDA_PATH}/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "${ANACONDA_PATH}/etc/profile.d/conda.sh" ]; then
          . "${ANACONDA_PATH}/etc/profile.d/conda.sh"
      else
          export PATH="${ANACONDA_PATH}/bin:$PATH"
      fi
  fi
  unset __conda_setup
fi

# Provide `projects` and `scratch` helper functions for switching to my Project
# folders, eventually creating them, if not already present.

PROJECT_PATH=~/Projects
SCRATH_PATH=~/Scratch

mkdir -p $PROJECT_PATH $SCRATH_PATH

scratch() { _project_helper $SCRATH_PATH $1; }
project() { _project_helper $PROJECT_PATH $1; }

_project_helper() {
  local PROJECT_DIR="${1}/${2}"

  if [ ! -d "$PROJECT_DIR" ]; then
    mkdir -p $PROJECT_DIR
  fi

  cd $PROJECT_DIR
}

############################################################
# Bash completion

_project_completion_helper() {
  # Pointer to current completion word.
  local cur
  cur=${COMP_WORDS[COMP_CWORD]}

  COMPREPLY=($(find ${1} -maxdepth 1 -type d -name "${cur}*" -printf "%f\n"))

  return 0
}

_scratch() {
  _project_completion_helper $SCRATH_PATH
}

_project() {
  _project_completion_helper $PROJECT_PATH
}

complete -F _scratch scratch
complete -F _project project

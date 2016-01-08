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

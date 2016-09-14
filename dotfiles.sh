link git/gitconfig .gitconfig
link git/gitignore_global .gitignore_global
link git/gitconfig.local .gitconfig.local

link gnupg/gpg-agent.conf
link gnupg/gpg.conf
link gnupg/pubring.gpg
link gnupg/secring.gpg
link gnupg/trustdb.gpg
run chmod -R go-rwx ~/.gnupg

link inputrc
link rvmrc
link gemrc
link tmux/tmux.conf .tmux.conf
link tmux/plugins
run tmux start-server
run tmux new-session -d
run ~/.tmux/plugins/tpm/scripts/install_plugins.sh
run tmux kill-server

link vim/vimrc .vimrc
link vim/vundle .vim/bundle/Vundle.vim
run vim +BundleInstall +qall 2&> /dev/null

link zsh/zshrc .zshrc
link zsh/oh-my-zsh .oh-my-zsh


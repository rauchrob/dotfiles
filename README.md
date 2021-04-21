## Requirements

The installation procedure assumes `git`, `tmux` and `vim` to be installed.

## Installing

To install my dotfiles in the current users home, simply run

```bash
    git clone git@bitbucket.org:rauch/dotfiles.git
    ./dotfiles/install
```

The installer is custom made. Run `./install -h` for more available options.

## Updating Oh-My-ZSH

[Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) has been added as via `git
subtree` as follows:

```bash
  git remote add oh-my-zsh https://github.com/ohmyzsh/ohmyzsh
  git subtree add --prefix=zsh/oh-my-zsh oh-my-zsh master --squash
```

For updating to the latest version, use the followig command:

```bash
  git subtree pull --prefix=zsh/oh-my-zsh oh-my-zsh master --squash
```

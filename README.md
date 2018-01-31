# Dotfiles

## TODO

- [x] Add arrow for git Push/Pull needs on the prompt
- [ ] Create an install script
- [ ] Create the tmux configuration
- [ ] Setup the tmux python-ide configuration
- [ ] Complete this Readme

## Install

### package needed

- zsh
- vim
- tmux
- conky : Info bar
- compton : Windows Transition & Transparency

### Ubuntu
```
sudo apt-get install git vim tmux
```

To install the configuration:

```
git clone https://github.com/matisla/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make install
```

## VIM configuration

$HOME/.vimrc

### Key bindings

Key bindings are defined in the [mappings.vim](./vim/mappings.vim) file.
this file is placed in the `$HOME/.vim/ directory`.

## ZSH with Oh-my-zsh

[matisla.zsh-theme](https://github.com/matisla/dotfiles/blob/master/zsh/matisla.zsh-theme)

## tmux

### Scripts

|   Script   |                   Description                  |
|:----------:|:----------------------------------------------:|
| dev-python | Lance un environnement de développement python |


#!/bin/sh

INSTALL='sudo pacman -S --noconfirm'

Help()
{
	echo 'Usage: install [tmux|nvim]'	
}

install_tmux()
{
	tmux -V
	if [ $? -ne 0 ]; then
		echo 'Please install tmux'
	fi
	echo
	echo '---------- CONFIG TMUX -----------'
	echo
	cp -l --backup --verbose tmux/tmux.conf $HOME/.tmux.conf
	echo
	echo '---------- TMUX DONE -------------'
}

install_nvim()
{
	nvim --version
	if [ $? -ne 0 ]; then
		echo 'Please install nvim'
	fi
	echo
	echo '---------- CONFIG NEOVIM ---------'
	echo
	cp -rl --verbose nvim/* $HOME/.config/nvim/
	echo
	echo '---------- NEOVIM DONE -----------'
}

if [ $# -ne 1 ]; then
	echo 'number of argument invalid'
	exit 1
fi

echo '---------- START INSTALLATION ----'

if [ 'tmux' == $1 ]; then
	install_tmux
elif [ 'nvim' == $1 ]; then
	install_nvim
else
	Help	
fi

echo
echo '---------- END -------------------'

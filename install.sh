#!/bin/sh

INSTALL='sudo pacman -S --noconfirm'
PART=$1

Help()
{
	echo 'Usage: install [tmux|nvim|banner]'	
}

if [ $# -ne 1 ]; then
	echo 'number of argument invalid'
	echo
	Help
	exit 1
fi


echo '---------- START INSTALLATION ----'
echo 

case $PART in

	i3)
		cd i3
		sh install.sh
		cd ..
	;;

	banner)
		echo
		echo '---------- CONFIG BANNER ---------'
		echo
		cp -v --backup etc/issue{,.net} /etc/issue{,.net}
		echo
		echo '---------- BANNER DONE -----------'
	;;

	tmux)
		cd tmux
		sh install.sh
		cd ..
	;;
	
	zsh)
		cd zsh
		sh install.sh
		cd ..
	;;

	nvim)
		nvim --version

		if [ $? -ne 0 ]; then
			echo 'Please install nvim'
		fi

		echo
		echo '---------- CONFIG NEOVIM ---------'
		echo
		cp -lr --verbose nvim/* $HOME/.config/nvim/
		echo
		echo '---------- NEOVIM DONE -----------'
	;;

	--help)
		Help
	;;

	*)
		echo "wrong parameter, try with --help"
	    exit 1

esac

echo
echo '---------- END -------------------'

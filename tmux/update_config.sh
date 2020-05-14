#!/bin/sh

if [[ -f $HOME/.tmux.conf ]]; then
	tmux source-file $HOME/.tmux.conf &&
	tmux display-message "Configuration file reloaded"
fi

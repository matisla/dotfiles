#!/bin/zsh


#######################################
#			IDE - Python
#######################################

if [ $# -eq 0 ] 
	then
		set path='.'
	else 
		set path=$1
fi

tmux new-session -s 'py-ide' -n 'editor' -d

# définition des fenêtres
tmux split-window -t 'py-ide' -h -p 40
tmux split-window -t 'py-ide' -v -p 40

tmux select-pane -t 0
tmux send-keys "vim" C-m

tmux select-pane -t 1
# tmux send-keys "vim" C-m

tmux select-pane -t 2
tmux send-keys "python3" C-m


# Connexion à la session
tmux attach-session -t 'py-ide'

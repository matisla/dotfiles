#!/bin/zsh

#######################################
#			IDE - Docker
#######################################

if [ -z "$(tmux ls | cut -d ':' -f1 | grep 'docker-ide')" ] 
	then
		;
	else 
		tmux kill-session -t 'docker-ide'
fi

tmux new-session -s 'docker-ide' -n 'editor' -d

tmux split-window -t 'docker-ide' -h -p 40

tmux select-pane -t 0
tmux send-keys "vim" C-m

tmux attach-session -t 'docker-ide'



# dnf
alias dnfi='sudo dnf install -y'

# docker
alias docker='sudo docker'

# TMUX
alias ta='tmux attach -t '
alias tls='tmux ls'
alias tks='tmux kill-session -t '

# SERVER
[ -f $ZSH/custom/server-alias.zsh ] && source server-alias.zsh

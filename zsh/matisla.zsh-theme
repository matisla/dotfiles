if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

# prompt first char
function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo '> '; fi
}

# prompt git
function git_info {
	local PREFIX="%{$FG[ff0]%}\ue0a0%B"
	local SUFFIX="%b"
	local b=$(git branch | grep -E "^\*" | cut -d ' ' -f2)
    
	git_count="$(command git rev-list --left-right --count HEAD...@'{u}' 2>/dev/null)"
	local push="%F{011}$([ $git_count[1] -ne 0 ] && echo "\u2191" || echo \ )%f"
	local pull="%F{012}$([ $git_count[2] -ne 0 ] && echo "\u2193" || echo \ )%f"

	echo "$PREFIX($b)$SUFFIX$push$pull"
}


git_arrows() {
    # do nothing if there is no upstream configured
    command git rev-parse --abbrev-ref @'{u}' &>/dev/null || return

    local arrows=""
    local status
    arrow_status="$(command git rev-list --left-right --count HEAD...@'{u}' 2>/dev/null)"

    # do nothing if the command failed
    (( !$? )) || return

    # split on tabs
    arrow_status=(${(ps:\t:)arrow_status})
    local left=${arrow_status[1]} right=${arrow_status[2]}

    (( ${right:-0} > 0 )) && arrows+="%F{011}⇣%f"
    (( ${left:-0} > 0 )) && arrows+="%F{012}⇡%f"

    echo $arrows
}

# git prompt 
# E0A0 vertical or 2387 horizontal
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[ff0]%} \ue0a0 %B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}?%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"

DIR_PROMPT="[%{$FG[105]%}%~%{$reset_color%}]"
USER_PROMPT="%{$FG[154]%}%n@%m%{$reset_color%}"

# Not used
CLOCK_PROMPT='⌚ %*'
# REPO_NAME="$(basename $(git rev-parse --show-toplevel))"


PROMPT="$DIR_PROMPT$(prompt_char)"
# RPROMPT='$(git_prompt_info)$(git_arrows)'
RPROMPT='$(git_info)'

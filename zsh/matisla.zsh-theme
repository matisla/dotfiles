if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

# prompt char
function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo '➤ '; fi
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
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[ff0]%} \uE0A0 (%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}?%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%})"

DIR_PROMPT="[%{$FG[105]%}%~%{$reset_color%}]"
USER_PROMPT="%{$FG[154]%}%n@%m%{$reset_color%}"

# Not used
CLOCK_PROMPT='⌚ %*'
# REPO_NAME="$(basename $(git rev-parse --show-toplevel))"


PROMPT="$DIR_PROMPT $(prompt_char) "
RPROMPT='$(git_prompt_info)$(git_arrows) $USER_PROMPT'

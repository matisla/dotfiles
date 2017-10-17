if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

# prompt char
function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo '➤ '; fi
}

# git prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[ff0]%} \uE0A0 %B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗"

DIR_PROMPT="[%{$FG[105]%}%~%{$reset_color%}]"
USER_PROMPT="%{$FG[154]%}%n@%m%{$reset_color%}"

# Not used
CLOCK_PROMPT='⌚ %*'
# REPO_NAME="$(basename $(git rev-parse --show-toplevel))"


PROMPT="$DIR_PROMPT $(prompt_char) "
RPROMPT="$(git_prompt_info) $USER_PROMPT"

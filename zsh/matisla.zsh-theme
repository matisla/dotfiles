if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

# prompt first char
function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo '> '; fi
}

# prompt git
function git_info {
		
	if [ -z "$(git rev-parse --git-dir 2> /dev/null)" ]; then return; fi

	local PREFIX="%{$FG[ff0]%}\ue0a0%B" # E0A0 vertical or 2387 horizontal
	local SUFFIX="%b"
	local b=$(git branch | grep -E "^\*" | cut -d ' ' -f2)
    
	git_count="$(command git rev-list --left-right --count HEAD...@'{u}' 2>/dev/null)"
	local push="%F{011}$([ $git_count[1] -ne 0 ] && echo "\u2191" || echo \ )%f"
	local pull="%F{012}$([ $git_count[2] -ne 0 ] && echo "\u2193" || echo \ )%f"

	echo "$PREFIX($b)$SUFFIX$push$pull"
}

DIR_PROMPT="[%{$FG[105]%}%~%{$reset_color%}]"
USER_PROMPT="%{$FG[154]%}%n@%m%{$reset_color%}"

# Not used
CLOCK_PROMPT='⌚ %*'
# REPO_NAME="$(basename $(git rev-parse --show-toplevel))"


PROMPT="$DIR_PROMPT$(prompt_char)"
RPROMPT='$(git_info)'

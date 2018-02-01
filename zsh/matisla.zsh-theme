if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

# prompt first char
function prompt_char {
	if [ $UID -eq 0 ]; then echo "# "; else echo "\u27a4 "; fi
}

# prompt git
function git_info {
		
	if [ -z "$(git rev-parse --git-dir 2> /dev/null)" ]; then return; fi

	local SYMBOL_CLEAN="%F{010}\u2714%f" # V 
	local SYMBOL_DIRTY="%F{011}\u2718%f" # X
	local PREFIX="%{$FG[ff0]%}\ue0a0%B"  # E0A0 vertical or 2387 horizontal
	local SUFFIX="%b"

	local b=$(git branch | grep -E "^\*" | cut -d ' ' -f2)
    
	git_count="$(command git rev-list --left-right --count HEAD...@'{u}' 2>/dev/null)"
	local push="%F{011}$([ $git_count[1] -ne 0 ] && echo "\u2191" || echo " ")%f"
	local pull="%F{012}$([ $git_count[2] -ne 0 ] && echo "\u2193" || echo " ")%f"
	local stat="$([ -z "$(git diff --shortstat 2> /dev/null | tail -n1)" ] && echo "$SYMBOL_CLEAN" || echo "$SYMBOL_DIRTY")"
	
	echo "$stat $PREFIX($b)$SUFFIX$push$pull"
}

DIR_PROMPT="[%{$FG[105]%}%~%{$reset_color%}]"
USER_PROMPT="%{$FG[154]%}%n@%m%{$reset_color%}"

PROMPT="$DIR_PROMPT$(prompt_char)"
RPROMPT='$(git_info)'

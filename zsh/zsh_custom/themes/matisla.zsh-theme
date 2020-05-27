if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

# prompt first char
function prompt_char {
	if [ $UID -eq 0 ]; then echo "# "; else echo "\u27a4 "; fi
}

# prompt git
function git_info {
		
	# check if git repo
	if [ -z "$(git rev-parse --git-dir 2> /dev/null)" ]; then return; fi

	local SYMBOL_CLEAN="%F{010}*%f" #25CF 
	local SYMBOL_DIRTY="%F{011}*%f" #25CF 
	local PREFIX="%{$FG[ff0]%}%B" # E0A0 vertical or 2387 horizontal
	local SUFFIX="%b"

	local b=$(git branch | grep -E "^\*" | cut -d ' ' -f2)
    
	git_count="$(command git rev-list --left-right --count HEAD...@'{u}' 2>/dev/null)"
	local push="%{$fg[4]%}$([ $git_count[1] -ne 0 ] && echo '*')%f" # 2191
	local pull="%{$fg[2]%}$([ $git_count[2] -ne 0 ] && echo '*')%f" # 2193
	local stat="$([ -z "$(git diff --shortstat 2> /dev/null | tail -n1)" ] && echo "$SYMBOL_CLEAN" || echo "$SYMBOL_DIRTY")"
	
	echo "$stat $PREFIX($b)$SUFFIX$push$pull"
}

DIR_PROMPT="[%{$FG[4]%}%~%{$reset_color%}]"
USER_PROMPT="%{$FG[yellow]%}%n@%m%{$reset_color%}"

#
# format: matisla@laptop[~]$
# format: matisla@laptop[~](okay)$

# PROMPT="$DIR_PROMPT$(prompt_char)"
# user
DIR_PROMPT="[%{$fg_bold[blue]%}%~%{$reset_color%}]"
USER_PROMPT="%{$fg[yellow]%}%n@%m%{$reset_color%}"

PROMPT="$USER_PROMPT$DIR_PROMPT$ "
RPROMPT="$(git_info)"
 

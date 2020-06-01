if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

# prompt first char
function prompt_char {
	if [ $UID -eq 0 ]; then echo "# "; else echo "$ "; fi
}

DIR_PROMPT="%{$fg[blue]%}%~%{$reset_color%}"
USER_PROMPT="%{$fg[yellow]%}%n@%m%{$reset_color%}"

PROMPT="$USER_PROMPT $DIR_PROMPT $(prompt_char) "

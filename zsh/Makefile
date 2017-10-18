
all:
	$(MAKE) install

clean:
	rm $HOME.zshrc \
		&& [ -f $HOME/.zshrc.old ] \
		&& mv $HOME/.zshrc.old $HOME/.zshrc
	rm $ZSH/theme/matisla.zsh-theme
	rm $ZSH/custom/aliases.zsh

install: # theme alias zshrc

zshrc:
	[ -f $HOME/.zshrc ] \
		&& mv $HOME/.zshrc $HOME/.zshrc.old \
		&& echo "backup file created: $HOME/.zshrc.old"
	ln zshrc $HOME/.zshrc

theme:
	[ -f $ZSH/theme/matisla.zsh-theme ] \
		&& rm $ZSH/theme/matisla.zsh-theme \
		&& echo "remove older file"
	ln matisla.zsh-theme $ZSH/theme/matisla.zsh-theme

alias:
	[ -f $ZSH/custom/aliases.zsh ] \
		&& mv $ZSH/custom/aliases.zsh $ZSH/custom/aliases.zsh.old \
		&& echo "backup file created: $ZSH/custom/aliases.zsh.old"	
	ln aliases.zsh $ZSH/custom/aliases.zsh 	

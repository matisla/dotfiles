
all:
	$(MAKE) install

clean:
	rm $(HOME)/zshrc \
		&& [ -f $(HOME)/.zshrc.old ] \
		&& mv $(HOME)/.zshrc.old $(HOME)/.zshrc
	rm $(ZSH)/themes/matisla.zsh-theme
	rm $(ZSH)/custom/aliases.zsh

install: themes alias zshrc

zshrc:
	@ln -f zshrc $(HOME)/.zshrc

themes:
	@ln -f matisla.zsh-theme $(ZSH)/themes/matisla.zsh-theme

alias:
	@ln -f aliases.zsh $(ZSH)/custom/aliases.zsh 	

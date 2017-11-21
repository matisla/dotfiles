all:
	$(MAKE) install

clean:
	rm $(HOME).vimrc \
		&& [ -f $(HOME)/.vimrc.old ] \
		&& mv $(HOME)/.vimrc.old $(HOME)/.vimrc
	rm $(HOME)/.vim/mappings.vim

install: vimrc mappings
	vim +PluginInstall +qall

update:
	vim +PluginUpdate +qall

vimrc:
	ln -f vimrc $(HOME)/.vimrc

mappings:
	mkdir -p $(HOME)/.vim
	ln -f mappings.vim $(HOME)/.vim/mappings.vim

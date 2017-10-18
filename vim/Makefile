all:
	$(MAKE) install

clean:
	rm $HOME.vimrc \
		&& [ -f $HOME/.vimrc.old ] \
		&& mv $HOME/.vimrc.old $HOME/.vimrc
	rm $HOME/.vim/mappings.vim

install: # vimrc mappings
	vim +PluginInstall +qall

vimrc:
	@if [ -f $HOME/.vimrc ] then
		mv $HOME/.vimrc $HOME/.vimrc.old
		@echo "backup file created: $HOME/.vimrc.old"
	fi
	ln vimrc $HOME/.vimrc

mappings:
	ln -f mappings.vim $HOME/.vim/mappings.vim

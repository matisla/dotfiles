all:
	$(MAKE) install

clean:
	@if [ -f $HOME/.tmux.conf ] then
		mv $HOME/.tmux.conf $HOME/.tmux.conf.old
		@echo "backup file created: $HOME/.tmux.conf.old"	
	fi
	rm $HOME/.tmux/mappings.tmux
	for i in $(ls); do rm $HOME/.tmux/sessions/$$i; done;

install: conf mappings sessions


conf:
	@if [ -f $HOME/.tmux.conf ] then
		mv $HOME/.tmux.conf $HOME/.tmux.conf.old
		@echo "backup file created: $HOME/.tmux.conf.old"	
	fi
	ln tmux.conf $HOME/.tmux.conf

sessions:
	mkdir -p $HOME/.tmux
	@for i in $(ls); do ln -f $$i $HOME/.tmux/sessions/$$i; done;

mappings:
	ln -f mappings.tmux $HOME/.tmux/mappings.tmux

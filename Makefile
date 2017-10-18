SUBDIRS=zsh vim tmux

all:
	$(MAKE) install

clean: clean-zsh	
	echo "clean !"

install:
	for i in $(SUBDIRS); do $(MAKE) -C $$i install; done; 

update:
	git fetch origin
	git reset --hard origin/master
	$(MAKE) install	

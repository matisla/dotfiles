
all:
	$(MAKE) install

clean:
	rm /etc/X11/xorg.conf.d/00-keyboard.conf
	rm $(HOME)/.Xresources

install: Xresources keyboard 

keyboard:
	@cp 00-keyboard.conf

Xresources:
	@ln -f Xresources $(HOME)/.Xresources

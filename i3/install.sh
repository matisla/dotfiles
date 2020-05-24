#/bin/sh

echo '---------- CONFIG i3 -------------'
echo

mkdir -pv $HOME/.config/i3 $HOME/.Xresources.d

cp -l --backup --verbose 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
cp -l --backup --verbose config $HOME/.config/i3/config

cp -l --backup --verbose Xresources $HOME/.Xresources
cp -lr --backup --verbose Xresources.d/* $HOME/.Xresources.d/

# Reload configuration
xrdb $HOME/.Xresources

echo
echo '---------- i3 DONE ---------------'



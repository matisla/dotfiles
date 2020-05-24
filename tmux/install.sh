#/bin/sh

echo '---------- CONFIG TMUX -----------'
echo

tmux -V
if [ $? -ne 0 ]; then
	echo 'Please install tmux'
fi

mkdir -pv $HOME/.config/tmux
cp -l --backup --verbose tmux/tmux.conf $HOME/.tmux.conf
cp -l --backup --verbose tmux/update_config.sh $HOME/.config/tmux/
cp -l --backup --verbose tmux/sessions/* $HOME/.config/tmux/

echo
echo '---------- TMUX DONE -------------'


#/bin/sh

echo '---------- CONFIG ZSH ------------'
echo

mkdir -pv $HOME/.oh-my-zsh/custom
cp -lr --backup --verbose custom $HOME/.oh-my-zsh/
cp -l --backup --verbose zshrc $HOME/.zshrc

source $HOME/.zshrc

echo
echo '---------- ZSH DONE --------------'


#/bin/sh

echo '---------- CONFIG ZSH ------------'
echo

mkdir -pv $HOME/.oh-my-zsh/custom
cp -lr --backup --verbose zsh_custom $HOME/.oh-my-zsh/custom
cp -l --backup --verbose zshrc $HOME/.zshrc

source $HOME/.zshrc

echo
echo '---------- ZSH DONE --------------'


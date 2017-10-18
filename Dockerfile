FROM alpine:latest

RUN apk update && \ 
	apk upgrade && \
	apk add git && \
	apk add vim && \
	apk add tmux && \
	apk add make && \
	apk add zsh


# install OH MY ZSH

#RUN sed -e s/ash/zsh/g /etc/passwd > /etc/passwd

RUN sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
RUN git clone https://github.com/matisla/dotfiles.git ~/dotfiles
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

RUN cd ~/dotfiles && \
	make install

WORKDIR ~

EXPOSE 22

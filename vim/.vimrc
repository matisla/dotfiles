set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins

Plugin 'tpope/vim-fugitive'				" interface GIT
Plugin 'vim-syntastic/syntastic'		" coloration syntaxique
Plugin 'scrooloose/nerdtree'			" Arborescence de fichiers
Plugin 'majutsushi/tagbar'				" list des fonctions
Plugin 'vim-airline/vim-airline'		" bar de tâche
Plugin 'kien/ctrlp.vim'					" ouvrir un fichier avec CTRL + P
Plugin 'cohama/lexima.vim'				" fermeture des '({[ etc automatiquement
Plugin 'valloric/youcompleteme'			" autocompletion

" Plugin Python
Plugin 'nvie/vim-flake8'				"PEP8

" Themes
Plugin 'flazz/vim-colorschemes'			" gestionnaire de Theme
Plugin 'rakr/vim-one'					" Theme atom-like
Plugin 'vim-airline/vim-airline-themes' " gestionnaire de Theme

call vundle#end()
filetype plugin indent on

set tabstop=4							" espacement pour les tabulations
set encoding=utf-8						" spécification de l'encodage
set nu 									" active les numéros de ligne
syntax on								" active la coloration de syntaxe

" Folding
set foldmethod=indent					" folding by indentation
set foldlevel=1							" folding level when open
nnoremap <Space> za						" space = Toggle folding open/close

" Python highlight
let python_highlight_all=1

colorscheme onedark
let g:airline_powerline_fonts = 1

hi Normal ctermbg=None

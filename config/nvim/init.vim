
" +-------------------------------------------------+
" |     _____          __   __        __            |
" |    /     \ _____ _/  |_|__| _____|  | _____     |
" |   /  \ /  \ __  \\  __\|  |/  ___/  | \__  \    |
" |  /    Y    \/ __ \|  | |  |\___ \|  |__/ __ \   |
" |  \____|____(______\__| |__/______\____(______\  |
" |                                                 |
" +-------------------------------------------------+


" +-------------------------------------------------+
" |    Plugins                                      |
" +-------------------------------------------------+

call plug#begin('~/.local/share/nvim/plugged')

Plug 'w0rp/ale'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" +-------------------------------------------------+
" |    Plugins setup                                |
" +-------------------------------------------------+

" Utlisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" CtrlP
set wildignore+=*.pyc

" Deoplete
let g:deoplete#enable_at_startup=1

" +-------------------------------------------------+
" |    autocommand                                  |
" +-------------------------------------------------+

" autocmd bufwritepost init.vim source %
" autocmd bufwritepost *.py !pylint <afile>

" +-------------------------------------------------+
" |    Other settings                               |
" +-------------------------------------------------+

" Colors
set t_Co=256
set background=dark
colorscheme onedark

hi ColorColumn ctermbg=236
let &colorcolumn=join(range(81,300),",")

syntax on

set textwidth=80
set cursorline

set scrolloff=3
set sidescrolloff=5
set sidescroll=10

" Disable swapfiles
set noswapfile
set wildmenu
set wildmode=full

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set shiftround
" set expandtab

" Search settings
set inccommand=nosplit

" line numbers
set number
set relativenumber

" +-------------------------------------------------+
" |    Mappings & Shortcuts                         |
" +-------------------------------------------------+

" Remove Highlight
noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>

" Windows navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab navigation
map <S-l> :tabnext<CR>
map <S-h> :tabprevious<CR>

" Folding code blocs
nnoremap <Space> za

" Run code
map <silent> <F5> term python %


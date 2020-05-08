call plug#begin('~/.nvim/plugged')

" colorschemes
Plug 'joshdick/onedark.vim'

Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'

" autocompletion
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-ultisnips'

Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'

" django
Plug 'mattn/emmet-vim'
Plug 'ekalinin/Dockerfile.vim'

Plug 'vimwiki/vimwiki'

call plug#end()


" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" use <TAB> to select the popup menu:
set completeopt=noinsert,menuone,noselect

" setting Ultisnips
" let g:UltiSnipsSnippetsDirectories=["snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" CtrlP
set wildignore+=*.pyc,*/venv/*


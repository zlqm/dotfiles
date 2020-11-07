set nocompatible
filetype off
filetype plugin on
set encoding=utf-8
syntax on
let python_highlight_all=1

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'dyng/ctrlsf.vim'
Plug 'vimwiki/vimwiki'
Plug 'tmhedberg/SimpylFold'
" Plug 'vim-scripts/indentpython.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
Plug 'rakr/vim-one'
" Make sure you use single quotes
" Initialize plugin system
call plug#end()
filetype plugin indent on

""""""""""""""""""""
"  Split Layouts
""""""""""""""""""""

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



""""""""""""""""""""
" Buffers
""""""""""""""""""""


""""""""""""""""""""
" Code Folding
""""""""""""""""""""
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

set tabstop=4
set nu

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css, *.cpp, *.c
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 
    \ set expandtab |
    \ set fileformat=unix

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

""""""""""""""""""""
""""""""""""""""""""

map <C-Y> :call yapf#YAPF()<cr>
imap <C-Y> <c-o>:call yapf#YAPF()<cr>


"
""""""""""""""""""""
""""""""""""""""""""
let g:airline_theme='one'
colorscheme one
" set background=dark " for the dark version
set background=light " for the light version
"
let mapleader = "\<space>"

""""""""""""""
"""""""""""""""
nnoremap <Leader>f :CtrlSF<Space>
map <s-j> <c-j>p
map <s-k> <c-k>p 
let g:ctrlsf_default_view_mode = 'compact'

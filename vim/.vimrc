set spell
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
Plug 'chrisbra/csv.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
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
colorscheme zellner
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

""""
""""
" 关闭NERDTree快捷键
map <leader>t :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1

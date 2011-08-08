"" Settings

set nocompatible                        " turn off compatibility with vi


set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on               " recognize filetypes and tab accordingly
syntax on

set virtualedit=all

set hidden

set lazyredraw

set showmode
set showcmd

set wildmenu
set wildmode=longest:full

set number

set background=dark
colorscheme ir_black

set hlsearch

set wrapscan
set incsearch
set ignorecase
set smartcase

set nowrap
set scrolloff=4
set textwidth=0

set history=100
set ch=2
set backspace=2

set nobackup
set nowritebackup
set dir=$HOME/.vim/tmp

set vb

set encoding=utf-8
set list
set listchars=eol:·,tab:»·,precedes:<,extends:>
set splitright
set splitbelow


"" Mappings
nmap <silent> <Leader>n :set invhls<cr>:set hls?<cr>
nmap <silent> <Leader>ev :e $MYVIMRC<cr>
nmap <silent> <Leader>sv :so $MYVIMRC<cr>
" if has("autocmd")
" 	autocmd bufwritepost vimrc source $MYVIMRC
" 	autocmd bufwritepost .vimrc source $MYVIMRC
" endif

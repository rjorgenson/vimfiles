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
colorscheme herald
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
" turn off hlsearch and wrapping shortcuts
nmap <silent> <Leader>n :set invhls<cr>:set hls?<cr>
nmap <silent> <Leader>w :set invwrap<CR>:set wrap?<CR>

" edit and manually source vimrc file
nmap <silent> <Leader>ev :e $MYVIMRC<cr>
nmap <silent> <Leader>sv :so $MYVIMRC<cr>

" autoreload vimrc file when saved
" vimrc is for directly editing the file .vimrc is symlinked to
if has("autocmd")
	autocmd! bufwritepost vimrc source $MYVIMRC
	autocmd! bufwritepost .vimrc source $MYVIMRC
endif

" quicker escape in insert mode
imap ii <Esc>

" invert k and j to move by display line instead of actual line
" useful when line wrapping is enabled
" enable the inverse for moving between actual lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

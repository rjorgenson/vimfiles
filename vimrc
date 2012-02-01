"" Settings

set nocompatible                        " turn off compatibility with vi

"" Enable pathogen autoloading of plugins in
"" ~/.vim/bundles directory
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"" Enable matchit plugin
runtime macros/matchit.vim

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
colorscheme zenburn
set t_Co=256
set hlsearch

set wrapscan
set incsearch
set showmatch
set ignorecase
set smartcase

set wrap
set textwidth=79
set colorcolumn=85
set scrolloff=3
set relativenumber
set cursorline
set textwidth=0

set history=1000
set ch=2
set backspace=2

set nobackup
set nowritebackup
set undofile
set directory=~/.vim/tmp//,~/.tmp//,~/tmp//,/var/tmp//,/tmp//
set backupdir=~/.vim/tmp//,~/.tmp//,~/tmp//,/var/tmp//,/tmp//

set vb

set encoding=utf-8
set list
set listchars=eol:¬,tab:▸\ ,precedes:«,extends:»
set splitright
set splitbelow

set title

set ruler

"" Mappings
" save a keystroke
nnoremap ; :

" because fuck F1 ... that's why
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Tab key moves between matching brackets
nnoremap <tab> %
vnoremap <tab> %

" turn off hlsearch and wrapping shortcuts
nmap <silent> <Leader>n :set invhls<CR>:set hls?<CR>
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

" remap buffer scroll to scroll 3 lines instead of 1
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" quicker escape in insert mode
imap ii <Esc>

" Make the arrow keys do nothing
" hjkl for life
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" invert k and j to move by display line instead of actual line
" useful when line wrapping is enabled
" enable the inverse for moving between actual lines
nnoremap k gk
nnoremap j gj
" these are probable useless, but oh well
nnoremap gk k
nnoremap gj j

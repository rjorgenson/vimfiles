"" Settings

set nocompatible                        " turn off compatibility with vi
filetype off

" Initialize Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-pastie'

" Github Bundle Repos
"
Bundle 'davidoc/taskpaper.vim'
Bundle 'wincent/Command-T'
"Bundle 'xolox/vim-notes'

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" MacVim settigns
set guifont=Anonymous\ Pro\ for\ Powerline:h11

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

set laststatus=2

set title

set ruler

""" Plugin configuration

"" vim-powerline
let g:Powerline_symbols = 'fancy'


"" Mappings
" save files requiring root permissions
cmap w!! %!sudo tee > /dev/null %

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

" enable spell check for commit messages
if has("autocmd")
    autocmd FileType gitcommit setlocal spell
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

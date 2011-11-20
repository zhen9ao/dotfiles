"initial settings
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible
set modelines=0

"tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"few options make thins better
"set encoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set history=1000
set undodir=~/.tmp/undodir
set backupdir=~/.tmp
set directory=~/.tmp
set ffs=unix,mac,dos
set spell


"change the leader key
let mapleader=","

"searching/moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"makes vim handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"TextMate styles
set list
set listchars=tab:▸\ ,eol:¬

"Map keys, disable the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"get rid of function keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"save on losing focus

au Focuslost * :wa

"map jj to <ESC>
inoremap qq <ESC>

"map keys for windows movements
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"for yanking...
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

set shell=/bin/zsh

syntax on
if has("gui_running")
    set guioptions=egmrt
    set guioptions-=T
    set t_Co=256
    set background=dark
    colorscheme solarized
    set showtabline=2
else
    colorscheme solarized
    set background=dark
endif

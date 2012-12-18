" initial settings
set nocompatible
filetype off
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()
" call pathogen#infect()
" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle bundles
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'hallison/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'myusuf3/numbers.vim'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/cocoa.vim'

filetype plugin indent on

syntax on
set modelines=0

" Mappings for a recovering TextMate user {{{1
" Indentation {{{2
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Few options make thins better
set encoding=utf-8
" Preferences {{{1
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
set undofile
set history=1000
set undodir=~/.tmp/undodir
set backupdir=~/.tmp
set directory=~/.tmp
set ffs=unix,mac,dos
set spell

" Tab settings
set visualbell t_vb=
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hidden
set nojoinspaces
set listchars=tab:▸\ ,eol:¬
set wildmode=longest,list
set nrformats=

" Set spelllang=en_gb
" Put swap files in /tmp file
if has("autocmd")
  autocmd FileType html,css,scss,ruby,pml,yaml,coffee,vim setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab smarttab
  autocmd BufNewFile,BufRead ~/projects/sencha/**/*.js setlocal ts=4 sts=4 sw=4 et
  autocmd FileType markdown setlocal wrap linebreak nolist
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  autocmd BufNewFile,BufRead Rakefile,Capfile,Gemfile,Termfile,Vagrantfile,config.ru setfiletype ruby
  " autocmd FileType ruby :Abolish -buffer initialise initialize
  autocmd FileType vo_base :colorscheme solarized
  autocmd BufNewFile,BufRead ~/dotfiles/vim/macros/*,~/.vim/macros/* setfiletype viminfo
endif

" Change the leader key
let mapleader=","

" Searching/moving
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

" Makes vim handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" TextMate styles
set list
set listchars=tab:▸\ ,eol:¬

" Map keys, disable the arrow keys
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Ack key mapping
nnoremap <leader>a :Ack 

nnoremap <leader>o :open 


" Get rid of function keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Let ; do the same thing as :
nnoremap ; :

" Save on losing focus
au Focuslost * :wa

"map qq  to <ESC>
inoremap qq <ESC>

" Speed up buffer switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Speed up tab switching
map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

" Shortcuts for opening file in same directory as current file {{{2
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
map <leader>er :e <C-R>=expand("%:r")."."<CR>

" vim-fugitive maps
map <leader>gs :Gstatus
map <leader>gd :Gdiff
map <leader>gc :Gcommit
map <leader>gb :Gblame
map <leader>gl :Glog
map <leader>gp :Git push

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

"for yanking...
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

set shell=/bin/zsh

" Commenting {{{2
" requires NERDCommenter plugin
vmap <D-/> \\gv
map <D-/> \\\


set t_Co=256
set background=dark
colorscheme solarized
if has("gui_running")
    set guioptions=egmrt
    set guioptions-=T
    set showtabline=2
    set guifont=Monaco\ for\ Powerline:h14
endif

" Ctag
" Let Tlist_Ctags_cmd='/usr/local/bin/ctags'
" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

" Powerline
let g:Powerline_symbols = 'fancy'

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

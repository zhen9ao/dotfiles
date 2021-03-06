" initial settings
set nocompatible
filetype off

" Plugins " {{{
" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle bundles
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
"Plugin 'artur-shaik/vim-javacomplete2'

" For Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" For Dash
Plugin 'rizzatti/dash.vim'

filetype plugin indent on
"}}}

" keyboard mapping for tagbar 
nmap <F8> :TagbarToggle<CR>

syntax on
set modelines=0

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
set number

set t_ut=
set t_Co=256
"set background=dark
colorscheme Tomorrow-Night
set nospell

" Tab settings
set visualbell t_vb=
set tabstop=2
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
  "  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  autocmd FileType html,css,scss,ruby,pml,yaml,coffee,vim,eruby setlocal ts=2 sts=2 sw=2 expandtab
  autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.html
  autocmd BufNewFile,BufRead *.html.slim set filetype=slim
  autocmd BufNewFile,BufRead *.js.coffee set filetype=coffee
  autocmd BufNewFile,BufRead Rakefile,Capfile,Gemfile,Termfile,Vagrantfile,config.ru,Podfile,*.podspec setfiletype ruby

  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab smarttab
  autocmd BufNewFile,BufRead ~/projects/sencha/**/*.js setlocal ts=4 sts=4 sw=4 et
  autocmd FileType markdown setlocal wrap linebreak nolist
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  autocmd BufNewFile,BufRead ~/dotfiles/vim/macros/*,~/.vim/macros/* setfiletype viminfo


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
  "
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

  " For paste
  "autocmd InsertEnter * setlocal paste
  "autocmd InsertLeave * setlocal nopaste
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
" nnoremap j gj
" nnoremap k gk

" Ack key mapping
nnoremap <leader>a :Ack 
nnoremap <leader>o :open 

" Get rid of function keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Save on losing focus
au Focuslost * :wa

"map jj  to <ESC>
inoremap jj <ESC>

" Speed up window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" buffer switching
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>

" Commenting {{{2
" requires NERDCommenter plugin
vmap <D-/> \\gv
map <D-/> \\\

" For MacVim
if has("gui_running")
    set guioptions=egmrt
    set guioptions-=T
    set showtabline=2
    set guifont=Fira\ Mono\ Medium\ for\ Powerline:h14
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


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Fix terminal timeout when pressing escape
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

set laststatus=2

" For airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

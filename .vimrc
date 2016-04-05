" Disable compatibility to Vi.
set nocompatible

" Settings that must be set before plug-ins are loaded.
let g:multi_cursor_use_default_mapping=0

" Setup Vundle.
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plug-ins.
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-repeat'
Plugin 'sjl/gundo.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'SirVer/ultisnips'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'sjbach/lusty'
Plugin 'schickling/vim-bufonly'
Plugin 'digitaltoad/vim-jade'
Plugin 'rust-lang/rust.vim'
Plugin 'vimwiki/vimwiki'

Plugin 'tomasr/molokai'
Plugin 'stulzer/heroku-colorscheme'
Plugin 'vim-scripts/C64.vim'

call vundle#end()

filetype plugin indent on

" Indenting and layout.
set autoindent
set cindent
set shiftwidth=2
set tabstop=2
set textwidth=0
set expandtab

" Buffer settings.
set autoread
set bufhidden=hide
set hidden

" Backup.
set nobackup
set noswapfile
set nowritebackup

" Environment and localization.
set encoding=utf-8
set ffs=unix,dos,mac

" Look & feel.
set cmdheight=2
set colorcolumn=79
set hlsearch
set history=1000
set lazyredraw
set noerrorbells
set novisualbell
set t_vb=
set number
set relativenumber
set ruler
set noshowmatch
set scrolloff=7
set wildmenu
set laststatus=2
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=→
set cursorline
set linespace=4
syntax enable

if has( "gui_running" )
	set guifont=Envy\ Code\ R\ 12
	set background=dark
	set guioptions=agit
  set cursorcolumn
	colorscheme wombat256
else
	colorscheme default
endif

let g:Powerline_symbols = "unicode"

" Undo.
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

" Completion (disable omni-completion).
set omnifunc=
set include=
set wildignore=*/virtenv/*,*/node_modules/*,*/extlibs/*,*/_site/*,*/__pycache__/*,*/bower_components/*,*/output/*

" Plug-ins/scripts.
source $VIMRUNTIME/macros/matchit.vim

" Load further configs.
source ~/.vim/config/mappings.vim
source ~/.vim/config/filetypes.vim
source ~/.vim/config/commands.vim

" CtrlP settings.
let g:ctrlp_custom_ignore = "node_modules"

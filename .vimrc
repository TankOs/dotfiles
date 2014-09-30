" Disable compatibility to Vi.
set nocompatible

" Execute Pathogen.
execute pathogen#infect()
execute pathogen#helptags()

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
set ruler
set noshowmatch
set scrolloff=7
set wildmenu
set laststatus=2
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
set nocursorline
set t_Co=256
set linespace=3
syntax enable

if has( "gui_running" )
	set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10
	set background=light
	colorscheme cthulhian
	set guioptions=agit
else
	colorscheme default
endif

let g:Powerline_symbols = 'unicode'

" Undo.
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

" Filetype settings.
filetype plugin on
filetype indent on

" Completion (disable omni-completion).
set omnifunc=
set include=

" Plug-ins/scripts.
source $VIMRUNTIME/macros/matchit.vim

" Load further configs.
source ~/.vim/config/mappings.vim
source ~/.vim/config/filetypes.vim
source ~/.vim/config/commands.vim

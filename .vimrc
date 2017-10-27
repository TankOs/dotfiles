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
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'sjl/gundo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'schickling/vim-bufonly'
Plugin 'mxw/vim-jsx'
Plugin 'plasticboy/vim-markdown'
Plugin 'sotte/presenting.vim'

Plugin 'rakr/vim-one'

call vundle#end()

filetype plugin indent on

" Indenting and layout.
set autoindent
set cindent
set shiftwidth=2
set tabstop=2
set textwidth=0
set expandtab
set nowrap

" Concealing
set conceallevel=2

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
syntax enable

if has( "gui_running" )
  set guifont=Envy\ Code\ R\ 13
  set linespace=3
  set background=dark
  set guioptions=agit
  set cursorcolumn
  set cursorline

  let g:one_allow_italics = 1

  colorscheme one
else
  colorscheme default
endif

" Undo.
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

" Completion (disable omni-completion).
set omnifunc=
set include=
set wildignore=*/virtenv/*,*/node_modules/*,*/extlibs/*,*/_site/*,*/__pycache__/*,*/bower_components/*,*/output/*,*/build/*

" JSX settings.
let g:jsx_ext_required = 0

" Plug-ins/scripts.
source $VIMRUNTIME/macros/matchit.vim

" Load further configs.
source ~/.vim/config/mappings.vim
source ~/.vim/config/filetypes.vim
source ~/.vim/config/commands.vim

" CtrlP settings.
let g:ctrlp_custom_ignore = "node_modules,platforms"

" Markdown settings.
let g:vim_markdown_folding_disabled = 1

" Show extra whitespace.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

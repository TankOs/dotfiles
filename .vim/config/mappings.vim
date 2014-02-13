let mapleader=","
let g:mapleader=","

" Save buffer.
map <f2> :w<cr>
imap <f2> <esc><f2>l

" Window movement.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Buffer handling.
map <leader>b :LustyJuggler<cr>
map <leader>q :bunload<cr>
map <leader>Q :BufOnly<cr>

" Reload .vimrc.
map <leader>V :source ~/.vimrc<cr>

" Hide highlighted search results.
map <leader>n :nohlsearch<cr>

" Toggle spell check.
map <leader>s :setlocal spell!<cr>

" NERDtree.
map <leader>t :NERDTreeToggle<cr>

" Gundo.
map <leader>u :GundoToggle<cr>

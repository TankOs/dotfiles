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
map <leader>q :bdelete<cr>
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

" Git (Fugitive).
map <leader>gs :Gstatus<cr>
map <leader>gc :Gcommit<cr>
map <leader>gb :Gblame<cr>

" Setup custom filetype handlers and settings.
map <leader>Fm :call MailSetup()<cr>

" C++ editing.
map <leader>+b $s {<esc>o}<esc>o<esc>j$

" Diff.
map <leader>dt :diffthis<cr>
map <leader>do :diffoff<cr>

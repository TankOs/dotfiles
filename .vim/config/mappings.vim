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

" Git.
map <leader>Gs :Gstatus<cr>
map <leader>Gc :Gcommit<cr>
map <leader>Gb :Gblame<cr>
map <leader>Gd :Gdiff<cr>
map <leader>Gg :GitGutterToggle<cr>

" Tagbar
map <leader>T :TagbarToggle<cr>

" Setup custom filetype handlers and settings.
map <leader>Fm :call MailSetup()<cr>
map <leader>Fs :call SFMLSetup()<cr>
map <leader>Fb :setf spacebars<cr>

" C++ editing.
map <leader>+b $s {<esc>o}<esc>o<esc>j$

" Diff.
map <leader>dt :diffthis<cr>
map <leader>do :diffoff<cr>

" CtrlP.
map <leader>f :CtrlP<cr>
map <leader>o :CtrlPBuffer<cr>

" eXecute LÖVE game.
map <leader>xl :!love .<cr>

" Reset workspace.
map <leader>rw <leader>Q<leader>q<c-w>v<c-w>v<c-l>
map <leader>Rw :BufOnly!<cr><leader>q<c-w>v<c-w>v<c-l>

" Yank whole buffer.
map <leader>y :%y+<cr>:%y<cr>

" Multiple cursors.
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

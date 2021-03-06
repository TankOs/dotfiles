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

map <leader>N :new<cr>
map <C-_> <C-w>_

" Buffer handling.
map <leader>q :q<cr>
map <leader>Q :bdelete<cr>

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
map <leader>rw :NERDTree<cr><c-w>l:BufOnly<cr>:bdelete<cr><c-w>v
" map <leader>rw :BufOnly<cr>:bdelete<cr><c-w>v

" Yank whole buffer.
map <leader>y :%y+<cr>:%y*<cr>:%y<cr>

" Multiple cursors.
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

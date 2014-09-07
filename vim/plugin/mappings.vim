nnoremap <Leader>w :w<CR>       " faster way to save a file
nmap <Leader><Leader> V         " enter visual model with <Leader><Leader>

" format the entire file
nnoremap <Leader>fef :normal! gg=G``<CR>

" set text wrapping toggles
nnoremap <silent> <Leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nnoremap <silent> <Leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" hashrocket
imap <c-l> <space>=><space>

" go to last edit location with ,.
nnoremap ,. '.

" open/close quickfix window faster
nnoremap <silent> ,qc :cclose<CR>
nnoremap <silent> ,qo :copen<CR>

" move up/down quickly by using M-j, M-k
" which will move us around by functions
nnoremap <silent> <M-j> }
nnoremap <silent> <M-k> {

au FileType ruby map <buffer> <M-j> ]m
au FileType ruby map <buffer> <M-k> [m
au FileType rspec map <buffer> <M-j> }
au FileType rspec map <buffer> <M-k> {
au FileType javascript map <buffer> <M-j> }
au FileType javascript map <buffer> <M-k> {

" move back and forth through previous and next buffers with ,z and ,x
nnoremap <silent> ,z :bp<CR>
nnoremap <silent> ,x :bn<CR>

nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" create window splits easier
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
nnoremap <silent> ,cf :let @* = expand("%:~")<CR>
nnoremap <silent> ,cn :let @* = expand("%:t")<CR>

" clear current search highlight by double tapping //
nnoremap <silent> // :nohlsearch<CR>

"(v)imrc (r)eload
nnoremap <silent> ,vr :so $MYVIMRC<CR>

" jump to line and column by typing '<mark_char>
nnoremap ' `
nnoremap ` '

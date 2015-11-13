" hate holding <Shift> every type i need to enter a cmd
nn ; :
nn : ;

" exit insert mode without using <Esc> + autosave current buffer
ino jk <Esc>:w<cr>

" start an external command with a single bang
nn ! :!

" make 0 go to the first character
" rather than the beginning of the line
nn 0 ^
nn ^ 0

" toggle paste mode
set pastetoggle=<F11>

" toggle numbers
nn <silent> <F12> :set number! relativenumber!<CR>

nn <Leader>w :w<CR>       " faster way to save a file
nn <Leader><Leader> V     " enter visual model with <Leader><Leader>

" bink K to grep word under cursor
nn K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" format the entire file
nn <Leader>ff :normal! gg=G``<CR>
nn <Leader>ffa :Autoformat<CR>

" set text wrapping toggles
nn <silent> <Leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nn <silent> <Leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" open/close quickfix window faster
nn <silent> ,qc :cclose<CR>
nn <silent> ,qo :copen<CR>

" move back and forth through previous and next buffers with ,z and ,x
nn <silent> ,z :bp<CR>
nn <silent> ,x :bn<CR>

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
nn <silent> ,cf :let @* = expand("%:~")<CR>
nn <silent> ,cn :let @* = expand("%:t")<CR>

"(v)imrc (r)eload
nn <silent> ,vr :so $MYVIMRC<CR>

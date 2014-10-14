set pastetoggle=<F2>

nn <Leader>w :w<CR>         " faster way to save a file
nmap <Leader><Leader> V     " enter visual model with <Leader><Leader>

" bink K to grep word under cursor
nn K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" make 0 go to the first character
" rather than the beginning of the line
nn 0 ^
nn ^ 0

" bind \ (backward slash) to grep shortcut
com -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" format the entire file
nn <Leader>fef :normal! gg=G``<CR>

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

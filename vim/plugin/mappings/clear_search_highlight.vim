function! MapCR()
  nn <cr> :nohlsearch<cr>
endfunction
call MapCR()

" do not use return to clear search on command and quickfix windows
au BufReadPost quickfix nn <buffer> <CR> <CR>
au CmdwinEnter * nn <cr> <cr>
au CmdwinLeave * call MapCR()

" clear current search highlight by double tapping //
nn <silent> // :nohlsearch<CR>

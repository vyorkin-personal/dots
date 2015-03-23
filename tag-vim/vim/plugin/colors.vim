hi Conceal guibg=NONE ctermbg=NONE
hi VertSplit guifg=NONE guibg=NONE cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
hi SignColumn guifg=NONE guibg=NONE cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
hi ColorColumn ctermbg=0 guibg=#000

augroup colors
  autocmd!
  au ColorScheme * so ~/.vim/plugin/colors.vim
augroup END


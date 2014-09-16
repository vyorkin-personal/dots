nn <Leader>f :Goyo<CR>

let g:goyo_width = 120

function! GoyoBefore()
  if exists('$TMUX')
    silent !tmux set status off
  endif

  silent! set nonumber
endfunction

function! GoyoAfter()
  if has('gui_running')
    set showtabline=0
  elseif exists('$TMUX')
    silent !tmux set status on
  endif

  so ~/.vim/plugin/colors.vim

  silent! set number
endfunction

let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]

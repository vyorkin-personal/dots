nn <Leader><CR> :Goyo<CR>

let g:goyo_width = 120

function! GoyoBefore()
  if exists('$TMUX')
    silent !tmux set status off
  endif
endfunction

function! GoyoAfter()
  if has('gui_running')
    set showtabline=0
  elseif exists('$TMUX')
    silent !tmux set status on
  endif
endfunction

let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]

set visualbell                " no sounds

" window size
set lines=42
set columns=100

set guioptions+=e
set guioptions+=c             " use console dialogs instead of gui popups
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=b
set guioptions-=l
set guioptions-=L
set guioptions-=T

set guicursor+=n-v-c:blinkon0

if has("gui_gtk2")
  set guifont=Inconsolata\ 9
elseif has("gui_macvim")
  set guifont=Menlo\ Regular:h11
elseif has("gui_win32")
  set guifont=Consolas:h11:cANSI
endif

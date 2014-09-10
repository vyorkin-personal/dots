if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
    \ 'ag %s -l --nocolor --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$\|\.gitkeep"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.gitkeep$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

" use ctrlp-py-match that performs much faster (up to x22)
" see FelikZ/ctrlp-py-matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" default to filename searches - so that appctrl will find application controller
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_clear_cache_on_exit = 0

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

" we don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = ',,'

" the default Ctrl-p mapping interferes with YankRing
nn <silent> ,, :CtrlP<CR>

" additional mapping for buffer search
nn <silent> <C-b> :CtrlPBuffer<cr>

" Alt-p or Cmd-Ship-P to clear the cache
nn <Esc>p :ClearCtrlPCache<cr>
nn <silent> <D-P> :ClearCtrlPCache<cr>

" open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map ,jm :CtrlP app/models<CR>
map ,jc :CtrlP app/controllers<CR>
map ,ja :CtrlP app/api<CR>
map ,jv :CtrlP app/views<CR>
map ,jh :CtrlP app/helpers<CR>

map ,j1 :CtrlP app/forms<CR>
map ,jfor :CtrlP app/forms<CR>

map ,j2 :CtrlP app/serializers<CR>
map ,jser :CtrlP app/serializers<CR>

map ,j3 :CtrlP app/mailers<CR>
map ,jmail :CtrlP/mailers<CR>

map ,jaj :CtrlP app/assets/javascripts<CR>
map ,jas :CtrlP app/assets/stylesheets<CR>

map ,jl :CtrlP lib<CR>
map ,jt :CtrlP lib/tasks<CR>

map ,jp :CtrlP public<CR>
map ,js :CtrlP spec<CR>
map ,jf :CtrlP spec/factories<CR>
map ,jd :CtrlP db<CR>
map ,jdm :CtrlP db/migrate<CR>

map ,jC :CtrlP config<CR>
map ,jcon :CtrlP config<CR>

map ,jlo :CtrlP config/locales<CR>
map ,jin :CtrlP config/initializers<CR>
map ,jen :CtrlP config/environments<CR>

map ,jV :CtrlP vendor<CR>
map ,jven :CtrlP vendor<CR>

map ,jT :CtrlP test<CR>
map ,jtest :CtrlP test<CR>

" app/gem specific jumps
map ,jsin :CtrlP app/synchronisers<CR>
map ,jup :CtrlP app/uploaders<CR>

map ,jra :CtrlP config/rails_admin<CR>
map ,jcap :CtrlP config/deploy<CR>

"Ctrl-m is not good - it overrides behavior of Enter
map ,jj :CtrlPBufTag<CR>

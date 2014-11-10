if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --files-with-matches -g ""'
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|\.hg|\.svn|\.sass-cache|cache|\.rsync_cache|vendor/([^\/]+\/)*vendor)$\|\.yardoc\|node_modules\|bower_components\|tmp\|coverage\|build\|dist\',
    \ 'file': '\.jar$\|\.exe$\|\.dll\|\.so$\|\.dat$|\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\.zip$\|\.jpeg$\|\.jpg$\|\.png$\|\.gif$\|\.woff$\|\.eot$\|\.ttf$\|\.aux$\|\.class|\~$\|\.min\.js$|\.min\.css$\|\[\[buffergator-tabs\]\]$'
    \ }
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

" use ctrlp-py-match that performs much faster (up to x22)
" see FelikZ/ctrlp-py-matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" default to filename searches - so that appctrl will find application controller
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_clear_cache_on_exit = 1
" i want it to be on top & i like it small & stay the same size
let g:ctrlp_match_window = 'top,order:btt,min:6,max:6,results:6'

" some alternative ways to start CtrlP
nn <silent> ,, :CtrlP<CR>

" Additional mapping for buffer search
nn <silent> <C-b> :CtrlPBuffer<cr>

" Alt-p to clear the cache
nn <Esc>p :ClearCtrlPCache<cr>

" open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first.
" mnemonic 'jump to [something]'

nn ,jm :CtrlP app/models<CR>
nn ,jc :CtrlP app/controllers<CR>
nn ,ja :CtrlP app/api<CR>
nn ,jv :CtrlP app/views<CR>
nn ,jh :CtrlP app/helpers<CR>

nn ,jl :CtrlP lib<CR>
nn ,jt :CtrlP lib/tasks<CR>

nn ,jp :CtrlP public<CR>
nn ,js :CtrlP spec<CR>
nn ,jf :CtrlP spec/factories<CR>
nn ,jd :CtrlP db<CR>
nn ,jdm :CtrlP db/migrate<CR>

nn ,jC :CtrlP config<CR>
" nn ,jcon :CtrlP config<CR>

nn ,jT :CtrlP test<CR>
nn ,jtest :CtrlP test<CR>

" nn ,jaj :CtrlP app/assets/javascripts<CR>
" nn ,jas :CtrlP app/assets/stylesheets<CR>

" nn ,jlo :CtrlP config/locales<CR>
nn ,jin :CtrlP config/initializers<CR>
nn ,jen :CtrlP config/environments<CR>

" nn ,jV :CtrlP vendor<CR>
" nn ,jven :CtrlP vendor<CR>

" app/gem specific jumps
" nn ,jsin :CtrlP app/synchronisers<CR>
nn ,jup :CtrlP app/uploaders<CR>

nn ,jra :CtrlP config/rails_admin<CR>
" nn ,jcap :CtrlP config/deploy<CR>

nn ,j1 :CtrlP app/forms<CR>
" nn ,jfor :CtrlP app/forms<CR>

nn ,j2 :CtrlP app/serializers<CR>
" nn ,jser :CtrlP app/serializers<CR>

nn ,j3 :CtrlP app/mailers<CR>
" nn ,jmail :CtrlP/mailers<CR>

"Ctrl-m is not good - it overrides behavior of Enter
nn ,jj :CtrlPBufTag<CR>

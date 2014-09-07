let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.gitkeep$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_clear_cache_on_exit = 0

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = ',,'

nn <silent> ,, :CtrlP<CR>

" Additional mapping for buffer search
nn <silent> <C-b> :CtrlPBuffer<cr>

" Alt-p to clear the cache
nn <Esc>p :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
nn ,jm :CtrlP app/models<CR>
nn ,jc :CtrlP app/controllers<CR>
nn ,ja :CtrlP app/api<CR>
nn ,jv :CtrlP app/views<CR>
nn ,jh :CtrlP app/helpers<CR>

nn ,j1 :CtrlP app/forms<CR>
nn ,jfor :CtrlP app/forms<CR>

nn ,j2 :CtrlP app/serializers<CR>
nn ,jser :CtrlP app/serializers<CR>

nn ,j3 :CtrlP app/mailers<CR>
nn ,jmail :CtrlP/mailers<CR>

nn ,jaj :CtrlP app/assets/javascripts<CR>
nn ,jas :CtrlP app/assets/stylesheets<CR>

nn ,jl :CtrlP lib<CR>
nn ,jt :CtrlP lib/tasks<CR>

nn ,jp :CtrlP public<CR>
nn ,js :CtrlP spec<CR>
nn ,jf :CtrlP spec/factories<CR>
nn ,jd :CtrlP db<CR>
nn ,jdm :CtrlP db/migrate<CR>

nn ,jC :CtrlP config<CR>
nn ,jcon :CtrlP config<CR>

nn ,jlo :CtrlP config/locales<CR>
nn ,jin :CtrlP config/initializers<CR>
nn ,jen :CtrlP config/environments<CR>

nn ,jV :CtrlP vendor<CR>
nn ,jven :CtrlP vendor<CR>

nn ,jT :CtrlP test<CR>
nn ,jtest :CtrlP test<CR>

" app/gem specific jumps
nn ,jsin :CtrlP app/synchronisers<CR>
nn ,jup :CtrlP app/uploaders<CR>

nn ,jra :CtrlP config/rails_admin<CR>
nn ,jcap :CtrlP config/deploy<CR>

"Ctrl-m is not good - it overrides behavior of Enter
nn ,jj :CtrlPBufTag<CR>

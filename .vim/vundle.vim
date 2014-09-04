filetype off                    " vundle requires filetype to be off initially
set rtp+=~/.vim/bundle/vundle   " add vundle to runtime path

" set up vundle & as a side effect:
"   .vim/bundle/vundle/autoload/vundle.vim will be sourced
"   the :Plugin command will be defined
call vundle#rc()

Plugin 'gmaric/vundle'		" must come first

if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif


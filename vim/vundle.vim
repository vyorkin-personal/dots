set rtp+=~/.vim/bundle/Vundle.vim   " add vundle to runtime path

" set up vundle & as a side effect:
"   .vim/bundle/vundle/autoload/vundle.vim will be sourced
"   the :Plugin command will be defined
call vundle#rc()

Plugin "gmarik/Vundle.vim"

if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif

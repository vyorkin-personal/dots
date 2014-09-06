set rtp+=~/.vim/bundle/vundle   " add vundle to runtime path

" set up vundle & as a side effect:
"   .vim/bundle/vundle/autoload/vundle.vim will be sourced
"   the :Plugin command will be defined
call vundle#rc()

" must come first
Plugin 'gmarik/vundle'

if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif

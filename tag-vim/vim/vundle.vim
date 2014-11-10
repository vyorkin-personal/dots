set nocompatible
filetype off

let $SKIP_HOOKUP = 1

" add vundle to runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" set up vundle & as a side effect:
"   .vim/bundle/vundle/autoload/vundle.vim will be sourced
"   the :Plugin command will be defined
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif

call vundle#end()

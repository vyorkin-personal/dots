mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

alias vimf='vim --noplugin -u $HOME/.vim/vundle.vim -N "+set hidden" "+syntax on"'
alias mvimf='mvim --noplugin -N "+set hidden" "+syntax on"'

export PATH="/home/vyorkin/.rbenv/shims:/home/vyorkin/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

set -o vi

export GREP_COLOR='1;33'

if [ -n "$DISPLAY" -a "$TERM" = "xterm" ]; then
  export TERM=xterm-256color
fi

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR=vim
else
  export VISUAL=gvim
fi

# use vi key bindings
bindkey -v    

# search backward incrementally for a specified string
bindkey '^r' history-incremental-search-backward

# emacs style movements
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word

# oh my zsh

export ZSH=$HOME/.oh-my-zsh

DISABLE_UPDATE_PROMPT=true

plugins=(
  ant fasd battery brew cap cabal coffee docker cp gem
  git github heroku history history-substring-search jruby knife lein
  node npm osx perl python rails rake rsync ruby rvm scala sublime tmux
  tmuxinator torrent vagrant vundle redis-cli web-search zeus bower
)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

source $HOME/.zsh-history-substring-search/zsh-history-substring-search.zsh

source $HOME/.zsh-autosuggestions/autosuggestions.zsh
AUTOSUGGESTION_HIGHLIGHT_COLOR=9

# enable autosuggestions automatically
zle-line-init() {
  zle autosuggest-start
}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle
bindkey '^f' vi-forward-word

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

autoload -U promptinit && promptinit

# disable annoying autocorrect feature
unsetopt correct_all

# auto predict
autoload predict-on
autoload predict-off

# on/off zsh autopredict
zle -N predict-on
zle -N predict-off
bindkey '^X1' predict-on
bindkey '^X2' predict-off

# setup rbenv
eval "$(rbenv init -)"

export DOTS=$HOME/.dots

# load custom functions & aliases
source $DOTS/.functions
source $DOTS/.aliases

# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

install caskroom/cask/brew-cask

tap homebrew/science

install eigen
install opencv

install veclibfort

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
install findutils
# Install GNU `sed`, overwriting the built-in `sed`
install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
install bash
install bash-completion

install reattach-to-user-namespace


# Install wget with IRI support
install wget --enable-iri

# dotfiles management
tap thoughtbot/formulae
install rcm
install gitsh
install liftoff

install zsh
install weechat
install irssi

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
install ringojs
install narwhal

install ant
install maven
install rbenv

# Install more recent versions of some OS X tools
install vim --override-system-vi --with-lua --with-perl --with-python3 --with-ruby
install homebrew/dupes/grep
install homebrew/dupes/screen

install python
install python3
install ghc
install cabal-install

install mysql
install redis
install boot2docker

# Install XML libs
install libxml2
install libxslt

install tmux
install nginx
install pow
install ctags
install llvm

# Install other useful binaries
install autossh
install graphviz
install the_silver_searcher
install ack
install bfg
install foremost
install svn
install git
install git-flow
install hashpump
install imagemagick --with-webp
install lynx
install nmap
install node # This installs `npm` too using the recommended installation method
install p7zip
install pv
install rename
install rhino
install sqlite
install sqlmap
install tree
install ucspi-tcp # `tcpserver` et al.
install webkit2png
install xpdf
install zopfli
install ffmpeg
install mplayer
install mplayershell
install youtube-dl

install homebrew/versions/lua52

# Remove outdated versions from the cellar
cleanup

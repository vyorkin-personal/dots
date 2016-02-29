dots
====

A new age reincarnation of my dotfiles, fucking clean, made with love.

P.S.: This is *my dotfiles*, there is my name & contacts everywhere. Don't
blindly use my settings as is.

installation
====

install [homebrew](http://brew.sh/):
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
git clone http://github.com/vyorkin/dots ~/.dots
cd ~/.dots
git submodule update --init
make
```

in case of problems with [tern_for_vim](https://github.com/ternjs/tern_for_vim):
```
cd $HOME/.vim/plugged/tern_for_vim
npm install
```

update ruby-build

```
cd ~/.rbenv/plugins/ruby-build && git pull origin master
```

# dont't forget

the fucking names:

* [brew bundler](https://github.com/Homebrew/homebrew-bundle)
* [showy edge](https://github.com/tekezo/ShowyEdge)
* [seil](https://pqrs.org/osx/karabiner/seil.html.en)
* [karabiner](https://pqrs.org/osx/karabiner/index.html.en)
* [Ilya Birman typography](http://ilyabirman.ru/projects/typography-layout/)

cvim chrome extension:
* [white theme](https://gist.github.com/vyorkin/711589d7f1a90954dec5)
* [cvimrc](https://gist.github.com/vyorkin/aa5abd74984fc77a17e5)

* [cheat](https://github.com/chrisallenlane/cheat)
* [tlrd](https://github.com/tldr-pages/tldr)

# resources
* [keyboard](https://github.com/jasonrudolph/keyboard)
* [rcm](http://thoughtbot.github.io/rcm/rcm.7.html)
* [awesome dotfiles](https://github.com/webpro/awesome-dotfiles)
* [how to setup tern](http://ternjs.net/doc/manual.html#configuration)
* [fasd](https://github.com/clvv/fasd#examples)

To run local eslint npm module and fallback to global I use [this tiny vim plugin](https://github.com/mtscout6/syntastic-local-eslint.vim).

install a new node version & migrate existing packages:
```
nvm install new-version --reinstall-packages-from=old-version
```

install vagrant vmware plugin (if you have a license):

```
vagrant plugin install vagrant-vmware-fusion
vagrant plugin license vagrant-vmware-fusion license.lic
```

# troubleshooting

in case aflred can't find cask symlinks:
[go to alfred settings and just click on the 'reset'
button](https://github.com/caskroom/homebrew-cask/issues/9685#issuecomment-77553432)

macvim + python:
```
brew rm -f python
brew rm -f macvim
brew install python
brew linkapps python
brew install macvim --with-python --override-system-vim
brew linkapps macvim
```

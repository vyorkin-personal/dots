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

cvim chrome extension:
* [white theme](https://gist.github.com/vyorkin/711589d7f1a90954dec5)
* [cvimrc](https://gist.github.com/vyorkin/aa5abd74984fc77a17e5)

* [cheat](https://github.com/chrisallenlane/cheat)
* [tlrd](https://github.com/tldr-pages/tldr)

# resources
* [rcm](http://thoughtbot.github.io/rcm/rcm.7.html)
* [awesome dotfiles](https://github.com/webpro/awesome-dotfiles)
* [how to setup tern](http://ternjs.net/doc/manual.html#configuration)

install vagrant vmware plugin (if you have a license):

```
vagrant plugin install vagrant-vmware-fusion
vagrant plugin license vagrant-vmware-fusion license.lic
```

# troubleshooting

in case aflred can't find cask symlinks:
[go to alfred settings and just click on the 'reset'
button](https://github.com/caskroom/homebrew-cask/issues/9685#issuecomment-77553432)

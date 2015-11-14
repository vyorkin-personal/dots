dots
====

a new age reincarnation of my dotfiles, fucking clean, made with love.

installation
====

install homebrew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
git clone http://github.com/vyorkin/dots ~/.dots
cd ~/.dots
git submodule update --init
make
```

in case of problems with tern_for_vim:
```
cd $HOME/.vim/plugged/tern_for_vim
npm install
```

update ruby-build

```
cd ~/.rbenv/plugins/ruby-build && git pull origin master
```

# dont't forget

* [cheat](https://github.com/chrisallenlane/cheat)
* [tlrd](https://github.com/tldr-pages/tldr)

# troubleshooting

in case aflred can't find cask symlinks:
[go to alfred settings and just click on the 'reset'
button](https://github.com/caskroom/homebrew-cask/issues/9685#issuecomment-77553432)

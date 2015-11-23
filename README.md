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

the fucking names:

* showy edge
* seil
* karabiner

cvim chrome extension:
* [white theme](https://gist.github.com/vyorkin/711589d7f1a90954dec5)
* [cvimrc](https://gist.github.com/vyorkin/aa5abd74984fc77a17e5)

* [cheat](https://github.com/chrisallenlane/cheat)
* [tlrd](https://github.com/tldr-pages/tldr)

install vagrant vmware plugin (if you have a license):

```
vagrant plugin install vagrant-vmware-fusion
vagrant plugin license vagrant-vmware-fusion license.lic
```

# troubleshooting

in case aflred can't find cask symlinks:
[go to alfred settings and just click on the 'reset'
button](https://github.com/caskroom/homebrew-cask/issues/9685#issuecomment-77553432)

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

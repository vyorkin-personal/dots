.PHONY: install, uninstall

install:
	brew tap thoughtbot/formulae
	brew install rcm
	rcup -v -d ~/.dots
	ln -s ~/.dots/dotsecrets/authinfo ~/authinfo
	brew tap Homebrew/bundle
	brew bundle
	rake install:all

uninstall:
	rake uninstall:all
	rcdn -v

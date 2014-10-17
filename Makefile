.PHONY: install, uninstall

install:
	rcup -v
	brew bundle Brewfile
	brew bundle Caskfile
	rake install:all

uninstall:
	rake uninstall:all
	rcdn -v

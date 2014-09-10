.PHONY: install, uninstall

install:
	rcup -v
	brew bundle Brewfile
	brew bundle Caskfile

uninstall:
	rcdn -v

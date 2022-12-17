PREFIX ?= /usr/local

install:
	install -Dm755 piglet $(PREFIX)/bin/piglet
	install -Dm644 completion.bash $(PREFIX)/share/bash-completion/completions/piglet

uninstall:
	rm -v $(PREFIX)/bin/piglet
	rm -v $(PREFIX)/share/bash-completion/completions/piglet

DESTDIR =
PREFIX  =/usr/local


all:
clean:
install:
update:
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-mount      $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-send       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-ping       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-speed      $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
## -- license --
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-ssh-helpers
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-ssh-helpers
## -- license --

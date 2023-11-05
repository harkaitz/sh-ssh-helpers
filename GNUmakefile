PROJECT=sh-ssh-helpers
VERSION=1.0.0
PREFIX=/usr/local
all:
clean:
install:

## -- BLOCK:license --
install: install-license
install-license: 
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp LICENSE  $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-mount      $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-authorized-keys $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-7z         $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-send       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-list       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-copy-tmp   $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-ping       $(DESTDIR)$(PREFIX)/bin
	cp bin/argdb            $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-speed      $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-sudoinit   $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-docker     $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --

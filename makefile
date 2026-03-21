.POSIX: # POSIX Makefile, use make,gmake,pdpmake,bmake
PROJECT =sh-ssh-helpers
VERSION =1.0.0
PREFIX  =/usr/local
DESTDIR =$(HOMEDRIVE)

all:
clean:
install:
check:
## -- BLOCK:license --
install: install-license
install-license: README.md LICENSE
	install -d $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	install -c -m 644 README.md LICENSE $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-history $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-power $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-authorized-keys $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-run $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-send $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-uname $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-copy-to-tmp $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-list $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-ping $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ssh-h-speed $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --

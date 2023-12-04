PROJECT=sh-ssh-helpers
VERSION=1.0.0
PREFIX=/usr/local
all:
clean:
install:

## -- BLOCK:license --
install: install-license
install-license: 
	install -D -t $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT) LICENSE
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-history    $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-mount      $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-authorized-keys $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-passwd     $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-send       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-config     $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-list       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-copy-tmp   $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-ping       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-services   $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-services-hgencrt $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-speed      $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-sudoinit   $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-setenv     $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-docker     $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-netstat    $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --

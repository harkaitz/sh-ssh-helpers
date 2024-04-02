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
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-history    $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-windows    $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-power      $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-authorized-keys $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-run        $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-passwd     $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-send       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-copy-keys  $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-config     $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-profile    $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-wireshark  $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-list       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-copy-tmp   $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-gitconfig  $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-ping       $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-check      $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-speed      $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-h-setenv     $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --

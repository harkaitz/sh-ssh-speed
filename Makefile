DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-ssh-speed
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-ssh-speed
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/ssh-speed  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --

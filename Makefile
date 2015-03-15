PREFIX=$(EPREFIX)/usr
HGRCDIR=$(EPREFIX)/etc/mercurial/hgrc.d
BINDIR=$(PREFIX)/bin
MANDIR=$(PREFIX)/share/man

INSTALL=install

NAME=cwdiff
MAN=$(NAME).1
HGRC=$(NAME).rc
all: $(NAME) $(MAN)

%.1: %
	help2man --no-info --output $@ ./$< 

.PHONY: all clean install

clean:
	-rm $(MAN)

install: all
	$(INSTALL) -m0644 -D $(NAME) $(DESTDIR)/$(BINDIR)/$(NAME)
	$(INSTALL) -m0755 -D $(MAN) $(DESTDIR)/$(MANDIR)/man1/$(MAN)
	[ -n '$(HGRCDIR)' ] && $(INSTALL) -m0644 -D $(HGRC) $(DESTDIR)/$(HGRCDIR)/$(HGRC)

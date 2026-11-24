PREFIX ?= /usr
DATADIR ?= $(PREFIX)/share
SYSCONFDIR ?= /etc
UNITDIR ?= $(PREFIX)/lib/systemd/system
SHAREDSTATEDIR ?= /var/lib

install:
	install -Dm644 niri/config.kdl                                  $(DESTDIR)$(SYSCONFDIR)/niri/config.kdl
	install -Dm644 niri/ultramarine.kdl                             $(DESTDIR)$(DATADIR)/ultramarine-niri/ultramarine.kdl
	install -Dm644 niri/noctalia-binds.kdl                          $(DESTDIR)$(DATADIR)/ultramarine-niri/noctalia-binds.kdl
	install -Dm644 skel/niri/config.kdl                             $(DESTDIR)$(SYSCONFDIR)/skel/.config/niri/config.kdl
	install -Dm644 skel/noctalia/config.toml                        $(DESTDIR)$(SYSCONFDIR)/skel/.config/noctalia/config.toml
	install -Dm644 skel/noctalia/palettes/Ultramarine.json          $(DESTDIR)$(SYSCONFDIR)/skel/.config/noctalia/palettes/Ultramarine.json
	install -Dm644 niri-xdg-terminals.list                          $(DESTDIR)$(SYSCONFDIR)/xdg/niri-xdg-terminals.list
	install -Dm644 niri-mimeapps.list                               $(DESTDIR)$(DATADIR)/applications/niri-mimeapps.list
	install -Dm644 60-ultramarine-niri.gschema.override             $(DESTDIR)$(DATADIR)/glib-2.0/schemas/60-ultramarine-niri.gschema.override
	install -Dm644 greetd/ultramarine-niri.toml                     $(DESTDIR)$(SYSCONFDIR)/greetd/ultramarine-niri.toml
	install -Dm644 greetd/greetd.service.d/ultramarine-niri.conf    $(DESTDIR)$(UNITDIR)/greetd.service.d/ultramarine-niri.conf
	install -Dm644 var/lib/noctalia-greeter/greeter.toml		$(DESTDIR)$(SHAREDSTATEDIR)/noctalia-greeter/greeter.toml

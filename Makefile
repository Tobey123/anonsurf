all:

clean:

install:
	#nim c src/AnonSurfGUI.nim
	mkdir bin/
	nim c --nimcache:/tmp --out:bin/dnstool nimsrc/extra-tools/dnstool.nim
	nim c --nimcache:/tmp --out:bin/make-torrc nimsrc/extra-tools/make_torrc.nim
	nim c --nimcache:/tmp --out:bin/anonsurf-gtk nimsrc/anonsurf/AnonSurfGTK.nim

	# Make dest folders for Deb packaging
	# mkdir -p $(DESTDIR)/etc/anonsurf/
	# mkdir -p $(DESTDIR)/etc/tor/
	# mkdir -p $(DESTDIR)/usr/lib/anonsurf/
	# # mkdir -p $(DESTDIR)/etc/init.d/
	# mkdir -p $(DESTDIR)/usr/bin/
	# mkdir -p $(DESTDIR)/usr/share/applications/
	# mkdir -p $(DESTDIR)/usr/share/parrot-menu/applications/
	# mkdir -p $(DESTDIR)/lib/systemd/system/

	# # Make apparmor profile folder
	# mkdir -p $(DESTDIR)/etc/apparmor.d/
	# # Add basfiles to /etc
	# cp configs/onion.pac $(DESTDIR)/etc/anonsurf/onion.pac
	# ln -s /etc/anonsurf/onion.pac $(DESTDIR)/etc/tor/onion.pac
	# cp configs/torrc.base $(DESTDIR)/etc/anonsurf/torrc.base

	# # Add core files
	# cp cli/anonsurf $(DESTDIR)/usr/bin/
	# cp -rf launchers/* $(DESTDIR)/usr/share/applications/
	# ln -s /usr/bin/anonsurf $(DESTDIR)/usr/bin/anon

	# # Install apparmor
	# cp apparmor/* $(DESTDIR)/etc/apparmor.d/
	
	# # cp src/AnonSurfGUI $(DESTDIR)/usr/bin/anonsurf-gtk
	# cp nimsrc/extra-tools/dnstool $(DESTDIR)/usr/bin/
	# cp nimsrc/anonsurf/AnonSurfGTK $(DESTDIR)/usr/bin/anonsurf-gtk
	# cp nimsrc/extra-tools/make_torrc $(DESTDIR)/usr/lib/anonsurf/make-torrc

	# # Add system units
	# cp daemon/anondaemon $(DESTDIR)/usr/lib/anonsurf/
	# cp sys-units/anonsurfd.service $(DESTDIR)/lib/systemd/system/
	# # cp sys-units/anontor.service $(DESTDIR)/lib/systemd/system/
	# # cp sys-units/anonsurfd $(DESTDIR)/etc/init.d/

	# # Init permission for folders
	# chown root:root $(DESTDIR)/etc/anonsurf -R
	# chmod 755 $(DESTDIR)/etc/anonsurf -R

	# # Init permission for files
	# chown root:root $(DESTDIR)/usr/bin/anonsurf
	# chmod 775 $(DESTDIR)/usr/bin/anonsurf
	# chmod 775 $(DESTDIR)/usr/bin/anonsurf-gtk
	# chmod 775 $(DESTDIR)/usr/lib/anonsurf/anondaemon
	# chmod 775 $(DESTDIR)/usr/bin/dnstool
	# chmod 775 $(DESTDIR)/usr/lib/anonsurf/make-torrc

	# chmod 644 $(DESTDIR)/etc/anonsurf/onion.pac
	# chmod 644 $(DESTDIR)/etc/anonsurf/torrc.base

Debian
====================
This directory contains files used to package ayardod/ayardo-qt
for Debian-based Linux systems. If you compile ayardod/ayardo-qt yourself, there are some useful files here.

## ayardo: URI support ##


ayardo-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install ayardo-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your ayardo-qt binary to `/usr/bin`
and the `../../share/pixmaps/ayardo128.png` to `/usr/share/pixmaps`

ayardo-qt.protocol (KDE)


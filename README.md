### ARCH LINUX UPGRADER

Arch-upgrade is small desktop convenience app which can be placed in
your [Arch Linux](http://www.archlinux.org) launcher/dock. Click on it
to pop up a terminal window to upgrade your system. Click on the OK
button when complete. Will prompt you to continue if there are news
updates on the Arch news feed.

### INSTALLATION

    sudo pacman -S zenity wmctrl python-html2text git
    git clone http://github.com/bulletmark/arch-upgrade
    cd arch-upgrade
    make install     # can also do this as root to install globally

Then install [Yaourt](http://wiki.archlinux.org/index.php/yaourt) from
the AUR. Or use another package manager and set ARCH_UPGRADE in your
environment (e.g. via ~/.bashrc).

### REMOVAL

    cd arch-upgrade  # Source dir, as above
    make uninstall   # can also do this as root to uninstall globally

### UPGRADE

    cd arch-upgrade  # Source dir, as above
    git pull
    make install     # can also do this as root to update globally

### LICENSE

Copyright (C) 2014 Mark Blakeney. This program is distributed under the
terms of the GNU General Public License.
This program is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or any later
version.
This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License at <http://www.gnu.org/licenses/> for more details.

<!-- vim: se ai syn=markdown: -->

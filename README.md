### ARCH LINUX UPGRADER

Arch-upgrade is small desktop convenience app which can be placed in
your [Arch Linux](http://www.archlinux.org) launcher/dock. Click on it
to pop up a terminal window to upgrade your system and AUR packages.
Click on the OK button when complete. Before updating, it will check and
present Arch news notices since you last updated and prompt to proceed.

### INSTALLATION

    sudo pacman -S zenity wmctrl python-html2text git
    git clone http://github.com/bulletmark/arch-upgrade
    cd arch-upgrade
    make install     # can also do this as root to install globally

Then install [Yaourt](http://aur.archlinux.org/packages/yaourt/) from
the AUR. Or create a file `$HOME/.config/arch-upgrade.conf` to specify
an alternative package manager like
[Pacaur](http://aur.archlinux.org/packages/pacaur/) and/or to use
different options. See example conf file here.

### REMOVAL

    cd arch-upgrade  # Source dir, as above
    make uninstall   # can also do this as root to uninstall globally

### UPGRADE

    cd arch-upgrade  # Source dir, as above
    git pull
    make install     # can also do this as root to update globally

### COMMAND LINE

You can also run directly on the command line. In this case it will not
use GUI popups and will only prompt from the command line. Just type:

    arch-upgrade -c

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

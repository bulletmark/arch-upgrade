#!/bin/bash
# Installation script.
# (C) Mark Blakeney, markb@berlios.de, May 2013.

PROG="arch-upgrade"

if [ "$(id -un)" == "root" ]; then
    BINDIRS=("/usr/bin")
    APPDIR="/usr/share/applications"
    ICODIR="/usr/share/icons"
else
    _XDG="${XDG_DATA_HOME:-$HOME/.local}"
    # Table of personal program bin/ dirs to search. First one found is one
    # used. Default is first one if no others found.
    BINDIRS=("$_XDG/bin" "$HOME/bin")
    APPDIR="$_XDG/share/applications"
    ICODIR="$_XDG/share/icons"
fi

usage() {
    echo "Usage: $(basename $0) [-options]"
    echo "Options:"
    echo "-r <remove/uninstall>"
    echo "-l <list only>"
    exit 1
}

REMOVE=0
LIST=0
while getopts rl c; do
    case $c in
    r) REMOVE=1;;
    l) LIST=1;;
    ?) usage;;
    esac
done

shift $((OPTIND - 1))

if [ $# -ne 0 ]; then
    usage
fi

# Search for personal bin/ dir. Default is 1st in list.
bindir="$BINDIRS"
for dir in "${BINDIRS[@]}"; do
    if [ -d "$dir" ]; then
        bindir="$dir"
        break
    fi
done

# Delete or list file/dir
clean() {
    local tgt=$1

    if [ -e $tgt -o -h $tgt ]; then
	if [ -d $tgt ]; then
	    if [ $REMOVE -eq 1 ]; then
		echo "Removing $tgt/"
		rm -rf $tgt
		return 0
	    else
		ls -ld $tgt/
	    fi
	elif [ $REMOVE -ne 0 ]; then
	    echo "Removing $tgt"
	    rm -r $tgt
	    return 0
	else
	    ls -l $tgt
	fi
    fi

    return 1
}

if [ $REMOVE -eq 0 -a $LIST -eq 0 ]; then
    mkdir -p $bindir
    install -CDv $PROG -t $bindir
    mkdir -p $APPDIR
    install -CDv -m 644 $PROG.desktop -t $APPDIR
    mkdir -p $ICODIR
    install -CDv -m 644 $PROG.png -t $ICODIR
else
    if clean $bindir/$PROG; then
	rmdir --ignore-fail-on-non-empty $bindir
    fi
    clean $APPDIR/$PROG.desktop
    clean $ICODIR/$PROG.png
fi

if [ -x /usr/bin/update-desktop-database ]; then
    /usr/bin/update-desktop-database -q
fi

exit 0

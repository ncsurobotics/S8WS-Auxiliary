#!/bin/sh
set -x

PACKAGE_MANAGERS=('pacman')

# If the system has a supported manager, use it
for manager in $PACKAGE_MANAGERS; do
    if which $manager &> /dev/null; then
        $( dirname $BASH_SOURCE )/managers/${manager}/install.sh
        exit
    fi
done

# There wasn't a supported manager, install to .installed
# Currently, just tells the user to install them
install_dir=$( dirname $BASH_SOURCE )/.installed
mkdir -p $install_dir

# qemu-user-static
if ! which qemu-user-static; then
    echo "Missing qemu-user-static"
fi

# python3
if ! which python3; then
    echo "Missing python3"
fi

# util-linux
if ! which util-linux; then
    echo "Missing util-linux"
fi

# coreutils
if ! which mount; then
    echo "Missing GNU coreutils"
fi

# xz
if ! which qemu-user-static; then
    echo "Missing xz"
fi

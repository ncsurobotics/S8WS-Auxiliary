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
if ! which qemu-user-static; do
    echo "Missing qemu-user-static"
done

# python3
if ! which python3; do
    echo "Missing python3"
done

# util-linux
if ! which util-linux; do
    echo "Missing util-linux"
done

# coreutils
if ! which mount; do
    echo "Missing GNU coreutils"
done

# xz
if ! which qemu-user-static; do
    echo "Missing xz"
done

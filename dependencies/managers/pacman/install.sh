#!/bin/sh
set -x

packages=('sh'
         'qemu-user-static'
         'python3'
         'util-linux'
         'coreutils'
         'xz'
         'make')
sudo pacman -Syu
sudo pacman -S ${packages[@]}

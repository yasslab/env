#!/bin/sh
set -ex

mkdir -p bin

if [ ! -x bin/mitamae ]; then
  wget -O - https://github.com/itamae-kitchen/mitamae/releases/download/v1.6.2/mitamae-x86_64-linux.tar.gz | tar zxf -
  sha512sum -c mitamae-sha512sum
  mv mitamae-x86_64-linux bin/mitamae
fi

#!/bin/bash

set -e
set -u

if [ ! -d texlive ]; then
    mkdir texlive
fi

tar \
    -C texlive \
    -xvzf ../start/texlive.tar

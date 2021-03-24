#!/bin/bash

set -e
set -u

if [ ! -d bin ]; then
    mkdir bin
fi

# This shortcut is justified at present.
cp "$(which pdftex)" bin/

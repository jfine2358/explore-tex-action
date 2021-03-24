#!/bin/bash

set -e
set -u

if [ ! -d bin ]; then
    mkdir bin
fi

# This shortcut is justified at present.
cp "$(which pdftex)" bin/


# This is also justified for now.
# Prevent: cp: './story.tex' and 'story.tex' are the same file
if [ ! -f story.tex ]; then
    cp $(kpsewhich story.tex) story.tex
fi

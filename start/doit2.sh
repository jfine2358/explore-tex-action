#!/bin/bash

set -u
set -e



cat 2019.openat \
    | grep -v "No such file" \
    | grep -v DIRECTORY  \
    | grep -v knuth-lib \
    | cut -d \" -f 2 \
	  > files.txt


# $ ls -l texlive/texmf-var/fonts/map/pdftex/updmap/pdftex.map 
# .. texlive/texmf-var/fonts/map/pdftex/updmap/pdftex.map -> pdftex_dl14.map
tar \
    -C /usr/local/texlive/2019/ \
    --dereference \
    -cvzf texlive.tar \
    $(cat files.txt | cut -d / -f 6-) \
    > texlive.fls

#!/bin/bash

set -u
set -e

# Before writing this script I did:
# $ rm /home/jfine/.texlive2019/texmf-var/web2c/pdftex/pdftex.fmt
# followed by
# $ rm -rf ~/.texlive2019/

strace -o story.strace pdftex --recorder story \\end

for NAME in access lstat openat stat
do
    grep ^$NAME story.strace > strace.$NAME
done

grep 2019 strace.openat > 2019.openat

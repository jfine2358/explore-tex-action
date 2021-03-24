#!/bin/bash

set -u
set -e



cat 2019.openat \
    | grep -v "No such file" \
    | grep -v DIRECTORY  \
    | grep -v knuth-lib \
    | cut -d \" -f 2 \
	  > files.txt

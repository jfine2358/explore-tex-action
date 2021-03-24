#!/bin/bash

set -e
set -u

TEXFORMATS=texlive/texmf-var/web2c/pdftex/ \
	  TEXMFCNF=texlive/texmf-dist/web2c/ \
	  strace -o story.strace \
	  ./bin/pdftex story \\end


cat story.strace | grep usr > story.usr.log

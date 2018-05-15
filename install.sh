#!/bin/bash

WORKDIR='~/.revepy'
PREVDIR=$PWD

git clone https://github.com/hakimel/reveal.js

cp src/index.html reveal.js/
mv reveal.js ~/.revepy
mkdir -p ~/.revepy/slide

cat README.md > $WORKDIR/slide/slide.md

chmod 755 ./slide
cp ./slide /usr/local/bin/

if !  netstat -an | grep 55555 | grep LISTEN 1>/dev/null 2>/dev/null; then
    cd $WORKDIR
    python3 -m http.server 55555 &
    cd $PREVDIR
fi

open http://localhost:55555

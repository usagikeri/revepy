#!/bin/bash

WORKDIR='~/.revepy'
PREVDIR=$PWD

git clone https://github.com/hakimel/reveal.js

cp src/index.html reveal.js/
mv reveal.js ~/.revepy
mkdir -p $WORKDIR/slide

cat README.md > $WORKDIR/slide/slide.md

chmod 755 ./slide
cp ./slide /usr/local/bin/


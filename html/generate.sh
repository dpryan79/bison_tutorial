#!/bin/bash
for f in ../txt/*.txt
do
    prefix=${f%%.txt}
    of=`basename $prefix`
    asciidoc -n -a icons -a toc -o $of.html $f
done
cp -rf /usr/share/asciidoc/images ./

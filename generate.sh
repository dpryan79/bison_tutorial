#!/bin/bash
#for f in ../txt/*.txt
#do
#    prefix=${f%%.txt}
#    of=`basename $prefix`
#    asciidoc -n -a icons -a toc -o $of.html $f
#done
#cp -rf /usr/share/asciidoc/images ./
#cat ../txt/*.txt > foo.txt
a2x --format=chunked -a icons -a toc -d book -f chunked --icons -D ./ txt/combined.txt
mv combined.chunked html

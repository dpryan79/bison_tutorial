#!/bin/bash
a2x --format=chunked -a icons -a toc -d book -f chunked --icons -D ./ txt/combined.txt
mv combined.chunked html

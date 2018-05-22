#!/bin/sh

#pandoc $1.md -s --mathjax --highlight-style pygments --toc -c buttondown.css -o \
#$1.html
#firefox $1.html &
INPUT="$1";
OUTPUT=$(echo $1 | sed -r 's/\.md/\.pdf/g')
pandoc $INPUT -o ../$OUTPUT --template eisvogel --listings

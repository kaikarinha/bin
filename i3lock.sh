#!/bin/sh

import -window root screen.png
convert screen.png -scale 25% -scale 400% -set colorspace Gray -separate -average screen.png
i3lock -i screen.png
#[[ -f $1 ]] && convert screen.png $1 -gravity center -composite -matte screen.png

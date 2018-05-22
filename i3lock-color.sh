#!/bin/sh

PURPLE='#300A24FF'
ORANGE='#DE744CFF'
DKGREY='#3C3B37BB'
LTGREY='#AEA79FBB'
WHITE='#FFFFFFBB'
#B='#3C3B37AA'  # blank
B='#FFFFFF00'  # blank
C='#ffffff22'  # clear ish
D='#DE744CFF'  # default
T=$WHITE  # text
W=$ORANGE  # wrong
V=$PURPLE  # verifying

import -window root screen.png
#convert screen.png -scale 10% -scale 1000% -set colorspace Gray -separate \
#-average -fill $DKGREY -tint 100 screen.png
convert screen.png -scale 10% -scale 1000% -fill $DKGREY -tint 100 screen.png
i3lock-color \
--insidevercolor=$DKGREY   \
--ringvercolor=$V     \
\
--insidewrongcolor=$DKGREY \
--ringwrongcolor=$W   \
\
--insidecolor=$DKGREY      \
--ringcolor=$B        \
--linecolor=$B        \
--separatorcolor=$B   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--keylayout 2         \
-i screen.png
#--screen 1            \
#--blur 5              \
# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
rm screen.png

#!/bin/bash
#

ICON_LOCK=/home/noobusdeer/Pictures/licon.png
TEMP_FILE=/tmp/lock.png

MOGRIFY_OPTS="-scale 10% -scale 1000% $TEMP_FILE"
CONVERT_OPTS="$TEMP_FILE  $ICON_LOCK -gravity center -composite $TEMP_FILE "

rm $TEMP_FILE
scrot $TEMP_FILE
mogrify $MOGRIFY_OPTS
convert $CONVERT_OPTS
i3lock -i $TEMP_FILE -n -u

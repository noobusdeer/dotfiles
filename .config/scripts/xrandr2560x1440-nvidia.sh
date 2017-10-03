#!/bin/bash
xrandr --newmode "2560x1440_30.00"  146.25  2560 2680 2944 3328  1440 1443 1448 1468 -hsync +vsync
xrandr --addmode HDMI-1-2 2560x1440_30.00
xrandr --output eDP-1-1 --off --output HDMI-1-2 --mode 2560x1440_30.00


setxkbmap "us,ru" ",winkeys" "grp:alt_shift_toggle,grp_led:scroll"

[[ -f $HOME/.Xresources ]] && xrdb -I$HOME -merge $HOME/.Xresources

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xset m 3
xset b 15 200 150
xset s off
xset dpms 3600 3600 3600

export QT_STYLE_OVERRIDE=gtk
export _JAVA_OPTIONS="‐Dawt.useSystemAAFontSettings=on ‐Dswin.aatext=true ‐Dswing.defaultaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

xinput set-button-map 10 1 2 3 4 5 2 7 8 9

devmon &
redshift &

exec i3


#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge ~/.Xresources  # update x resources db   

#xset +dpms
#xset dpms 0 0 300      # switch off display after 5 min of inactivity

xset +fp /usr/share/fonts/local 
xset +fp $HOME/.local/share/fonts  
xset fp rehash

redshift -l 21.17:72.83 -t 5800:3900 &    # set screen color suitable for eye

unclutter -noevents -idle 1 &  #hide cursor

syndaemon -t -k -i 2 -d & # disable touchpad when typing


#start-pulseaudio-x11

#exec startkde 

#eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)

#export GPG_AGENT_INFO SSH_AUTH_SOCK

#exec gnome-session

#exec env GNOME_SHELL_SESSION_MODE=classic gnome-session --session gnome-classic

#exec cinnamon-session

#sxhkd &

#exec bspwm 

#exec dwm-start

#exec startlxqt

#exec herbstluftwm --locked

#exec monsterwm










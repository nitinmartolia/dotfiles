#
# ~/.bash_profile
#

export PATH=${PATH}:/home/trench/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx -- -keeptty -nolisten tcp > ~/.xorg.log 2>&1


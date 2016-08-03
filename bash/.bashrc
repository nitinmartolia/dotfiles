#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#[[ -z "$TMUX" ]] && exec tmux -2


# TMUX
#if which tmux >/dev/null 2>&1; then
#    #if not inside a tmux session, and if no session is started, start a new session
#    test -z "$TMUX" && (tmux -2 attach || tmux -2 new-session)
#fi


#export PATH=~/bin:$PATH 
#export PANEL_FIFO="/tmp/panel-fifo" 
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')


# colour coreutils
eval $(dircolors -b ~/.dir_colors)
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias batt='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias dic='sdcv'

#~/Builds/screenFetch/screenfetch-dev

#PS1='[\u@\h \W]\$ '

PS1="\[\033[01;37m\]\W \[\033[00;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[1;32m\];)\"; else echo \"\[\033[1;31m\];(\"; fi)\[\033[00m\] "

set -o vi #enabling vi mode in bash


## Exporting sdcv dictionary pager 
export SDCV_PAGER=less

## Exporting GPGKEY
export GPGKEY=132143C6
export GPG_TTY=$(tty)


#man() {
#    env LESS_TERMCAP_mb=$'\E[01;31m'   `# begin blinking` \          
#    LESS_TERMCAP_md=$'\E[01;38;5;74m'  `# begin bold` \         
#    LESS_TERMCAP_me=$'\E[0m'           `# end bold mode` \                  
#    LESS_TERMCAP_se=$'\E[0m'           `# end standout-mode` \                 
#    LESS_TERMCAP_so=$'\E[02;31m'       `# begin standout-mode - info box` \             
#    LESS_TERMCAP_ue=$'\E[0m'           `# end underline` \                  
#    LESS_TERMCAP_us=$'\E[04;38;5;146m' `# begin underline` \        
#    man "$@"
#}
#
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' `# begin blinking` \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' `# begin bold` \
    LESS_TERMCAP_me=$'\E[0m' `# end bold mode` \
    LESS_TERMCAP_se=$'\E[0m' `# end standout-mode`\
    LESS_TERMCAP_so=$'\E[02;31m' `# begin standout-mode - info box` \
    LESS_TERMCAP_ue=$'\E[0m' `# end underline` \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' `# begin underline` \
    man "$@"
}


#paclog() { tail -n"$2" /var/log/pacman.log ;}

xrdb -merge ~/.Xresources     # update xresources db


# visual bell
set bell-style visible


# history settings

export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export EDITOR=vim
export PAGER=less
export HISTIGNORE="cd *:ls:ls *:history*:cat *:clear"

# append to the history file, don't overwrite it
shopt -s histappend   



# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
shopt -s cdspell # to automatically correct mistyped directory names on cd

# Easy extract                                                     

extract () {                                                       
   if [ -f "$1" ] ; then                                            
       case "$1" in                                                 
           *.tar.bz2)   tar xvjf "$1"    ;;                         
           *.tar.gz)    tar xvzf "$1"    ;;                         
           *.bz2)       bunzip2 "$1"     ;;                         
           *.rar)       rar x "$1"       ;;                         
           *.gz)        gunzip "$1"      ;;                         
           *.tar)       tar xvf "$1"     ;;                         
           *.tbz2)      tar xvjf "$1"    ;;                         
           *.tgz)       tar xvzf "$1"    ;;                         
           *.zip)       unzip "$1"       ;;                         
           *.Z)         uncompress "$1"  ;;                         
           *.7z)        7z x "$1"        ;;                         
           *.cbr)       rar x "$1"       ;;                         
           *.cbz)       unzip "$1"       ;;                         
           *)           echo "don't know how to extract '$1'..." ;; 
       esac                                                         
   else                                                             
       echo "'$1' is not a valid file!"                             
   fi                                                               
 }                                                                  

 # Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
 




# make directory and cd to it
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }


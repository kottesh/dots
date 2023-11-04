#######################################
# ALIASES                   	      #
#######################################


#-----------------------
# Misc

alias -s md="grip -b"

#-----------------------
# Apps

alias v="nvim"


#-----------------------
# Navigations

alias dots="cd $HOME/.dots"


#-----------------------
# Commands 

alias q="exit"
alias sudo="sudo "
alias jctl="journalctl -p 3 -xb" #get the error messages from journalctl
alias p="xclip -sel clipboard -out"
alias ex="atool --explain --extract"
alias watch="watch -d"

alias cp="cp -rv"
alias mv="mv -v"
alias rm="rm -rv"

alias paci="sudo pacman -S"
alias pacu="sudo pacman -Syu"
alias pacr="sudo pacman -Rcns"

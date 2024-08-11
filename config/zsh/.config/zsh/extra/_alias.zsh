#######################################
# ALIASES                   	      #
#######################################


#-----------------------
# Misc

alias -s md="grip -b"

#-----------------------
# Apps

alias v="nvim"
alias vpnc="protonvpn-cli c"
alias vpnd="protonvpn-cli d"
alias vpns="protonvpn-cli s"

# docker
alias doccs="docker container inspect --format '{{.State.Status}}'"
alias doci="docker image"
alias docc="docker container"

alias ddrop="dragon-drop"


#-----------------------
# Navigations

alias dots="cd $HOME/.dots"
alias trd="cd ~/worktree/uni/3rd\ year/sem5"


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
alias up="uptime --pretty"
alias rm="rm -rv"


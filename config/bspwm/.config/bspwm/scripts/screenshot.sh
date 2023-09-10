#!/usr/bin/env bash

# options to be displayed
option0="screen"
option1="area"
option2="window"

# options to be displyed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -font "Operator Mono 12" -p " ")"
case $selected in
    $option0)
        cd $HOME/Pictures/Screenshots/ && sleep 1 && scrot;;
    $option1)
        cd $HOME/Pictures/Screenshots/ && scrot -s;;
    $option2)
        cd $HOME/Pictures/Screenshots/ && sleep 1 && scrot -u;;
esac

#!/usr/bin/env bash

lock=" Lock"
logout="󰗼 Logout"
shutdown="󰐥 Shutdown"
reboot=" Reboot"
sleep="󰒲 Sleep"

selected_option=$(echo -e "$lock\n$logout\n$sleep\n$reboot\n$shutdown" | rofi -dmenu\
                                                                              -i\
                                                                              -p "Power"\
                                                                              -config "~/.config/rofi/powermenu.rasi"\
                                                                              -font "Operator Mono 12"\
                                                                              -width "15"\
                                                                              -lines 5\
                                                                              -line-margin 3\
                                                                              -line-padding 10\
                                                                              -scrollbar-width "0"
                 )

if [ "$selected_option" == "$lock" ]
then
    playerctl pause -a
    betterlockscreen --lock
elif [ "$selected_option" == "$logout" ]
then
    bspc quit
elif [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    amixer set Master mute
    playerctl pause -a
    systemctl suspend
fi

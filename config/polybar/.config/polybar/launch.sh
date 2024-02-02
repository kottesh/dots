#!/usr/bin/env bash

launch() {
    killall -q polybar

    while pgrep -u $UID -x polybar > /dev/null
    do
        sleep 1;
    done

#   polybar -qr top -c "${HOME}/.config/polybar/config.ini" &
#   polybar -qr bottom -c "${HOME}/.config/polybar/config.ini" &
    polybar -qr main -c "${HOME}/.config/polybar/config.ini" &
}

launch

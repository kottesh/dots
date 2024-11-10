#!/usr/bin/env bash

launch() {
    killall -q polybar

    while pgrep -u $UID -x polybar > /dev/null
    do
        sleep 1;
    done

    # polybar -q -r top -c "${HOME}/.config/polybar/config.ini" &
    # polybar -q -r bottom -c "${HOME}/.config/polybar/config.ini" &
    polybar -q -r main -c "${HOME}/.config/polybar/config.ini" &
}

launch

#!/usr/bin/env sh

    killall -q polybar
        wait 2
while pgrep -x polybar >/dev/null; do sleep 1; done
    polybar Launcher & polybar Xwork & polybar Script-3 & polybar Audio & polybar Scripts & polybar Date & polybar Power &

        echo "done"

#!/usr/bin/env sh

if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
    fi

OUT="$HOME/%Y-%m-%d-%H%M%s_%wx%h_escrotum.png"

declare -A shot
shot[Full Screen]="escrotum -d 1 $OUT"
shot[Focused Window]="escrotum -x $(xdotool getwindowfocus) -d 1 $OUT"
shot[Select]="escrotum -s -d 1 $OUT"
shot[NONE]="notify-send 'NO SHOT!!'"


choice=$(printf '%s\n' "${!shot[@]}" | $MENU -i -p 'Config Audio: ')

if [ "$choice" ]; then
        SELECT=$(printf '%s\n' "${shot["${choice}"]}")
        $SELECT
    else
        exit 0
fi

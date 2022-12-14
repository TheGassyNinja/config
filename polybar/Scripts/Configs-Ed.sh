#!/usr/bin/env sh


if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
    fi
DIR1="$HOME/.config"
DIR2="$HOME/Suckless"

declare -A CONFS
CONFS[Xinitrc]=$HOME/.xinitrc
CONFS[Xresources]=$HOME/.Xresources
CONFS[Bashrc]=$HOME/.bashrc
CONFS[Vimrc]=$HOME/.vimrc
CONFS[Picom]=$DIR1/picom.conf
CONFS[Kitty]=$DIR1/kitty/kitty.conf
CONFS[Alacritty]=$DIR1/alacritty/alacritty.yml
CONFS[DWM]=$DIR2/dwm/dwm/config.h
CONFS[SlStatus]=$DIR2/dwm/slstatus/config.h
CONFS[Dmenu]=$DIR2/dmenu/config.h
CONFS[ST]=$DIR2/st/config.h



choice=$(printf '%s\n' "${!CONFS[@]}" | $MENU -i -p 'CONFIGS: ')

if [ "$choice" ]; then
        CFG=$(printf '%s\n' "${CONFS["${choice}"]}")
        kitty -e vim $CFG
    else
        exit 0
fi

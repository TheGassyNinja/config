#!/bin/bash
if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
    fi

bssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | $MENU -l 10 -p "Select Wifi  :" | cut -d' ' -f1)
   pass=$(echo "" | $MENU -p "Enter Password  :")

 [ -n "$pass" ] && nmcli device wifi connect "$bssid" password "$pass" || nmcli device wifi connect "$bssid"

 sleep 10

if ping -q -c 2 -W 2 google.com >/dev/null; then
       	notify-send "Your internet is working :)"
		 else
	 notify-send "Your internet is not working :)"
fi

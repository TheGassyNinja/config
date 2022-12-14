 #!/usr/bin/env sh

if ! command -v rofi &> /dev/null
   then
       MENU="dmenu"
       else
           MENU="rofi -dmenu"
    fi



DIR="$HOME/Scripts"
options=$(cd ${DIR} && /bin/ls | grep .sh | cut -d "." -f 1)
choice=$(echo -e "${options[@]}" | $MENU -i -p 'My-Scripts: ')

 ${DIR}/${choice}.*

#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Denebola/Denebola.conf &> /dev/null &

exit

#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Alya/Alya.conf &> /dev/null &

exit

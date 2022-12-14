#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Shaula/Shaula.conf &> /dev/null &

exit

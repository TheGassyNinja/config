#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Sargas/Sargas.conf &> /dev/null &

exit

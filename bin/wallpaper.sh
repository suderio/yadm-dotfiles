#!/bin/bash

[[ -f /usr/bin/nitrogen ]] || exit 1
delay=600
nitrogen --restore
sleep 300
while :
do
    for i in $(ls $HOME/Pictures/Wallpapers/* | shuf)
    do
       echo $i
       nitrogen --set-zoom-fill $i
       sleep $delay
    done
done


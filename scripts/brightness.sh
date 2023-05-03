#!/bin/bash


xrandr --output $(xrandr | grep "connected primary" | cut -d " " -f1) --brightness $(printf "1.0\n0.9\n0.8\n0.7\n0.6\n0.5\n0.4\n0.3\0.2\n0.1" | dmenu -p "Brightness" -fn jetbrainsmononerdfont -l 5 -nb "#101010" -nf "#d4d4d4" -sb "#808080" -sf "#000000")

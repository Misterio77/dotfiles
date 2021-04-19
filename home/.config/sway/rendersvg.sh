#!/usr/bin/bash
size=29
middle=$((($size/2)))

dir="/home/misterio/.config/sway/"
svg="$dir/$1.svg"
png="$dir/$1.png"

inkscape --export-type="png" $svg -w $size -h $size
swaymsg reload

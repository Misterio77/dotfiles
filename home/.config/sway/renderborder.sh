#!/usr/bin/bash
size=21
middle=$((($size/2)))

dir="/home/misterio/.config/sway/"
svg="$dir/border.svg"
png="$dir/border.png"

inkscape --export-type="png" $svg -w $size -h $size
#convert $png -fill transparent -draw "color $middle,$middle point" $png
swaymsg reload

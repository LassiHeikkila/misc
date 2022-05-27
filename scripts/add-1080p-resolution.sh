#!/usr/bin/env bash

d="$(xrandr | grep -w connected | cut -d' ' -f1)"

m="$(cvt 1920 1080)"
mh="$(echo ${m} | cut -d'"' -f2)"

sudo xrandr --newmode ${m}
sudo xrandr --addmode "${d}" ${mh}
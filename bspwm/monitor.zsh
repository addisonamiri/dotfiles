#!/usr/bin/env zsh

if [[ ($1 == 1) || (-z $(xrandr | grep " connected" | grep VGA)) ]]; then
  xrandr --output VGA1 --off
  bspc monitor -d I II III IV V VI VII VIII IX X
  wallpaper 1
  bspc config top_padding 18
else
  xrandr --output VGA1 --auto --pos 0x0 --output LVDS1 --auto --pos 1920x280 # 280=1080-800
  bspc monitor VGA1 -d I II III IV V
  bspc monitor LVDS1 -d VI VII VIII IX X
  wallpaper 2
  bspc config -m LVDS1 top_padding 0
  bspc config -m VGA1 top_padding 18
fi
bspc config window_gap 20

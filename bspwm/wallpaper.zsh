#!/usr/bin/env zsh

if [[ ($1 == 1) || (-z $(xrandr | grep " connected" | grep VGA)) ]]; then
  find ~/images/wallpaper -type f \( -name '*.jpg' -o -name '*.png' \) -print0 | shuf -n1 -z | xargs -0 feh --no-fehbg --bg-fill
else
  find ~/images/wallpaper -type f \( -name '*.jpg' -o -name '*.png' \) -print0 | shuf -n2 -z | xargs -0 feh --no-fehbg --bg-fill
fi

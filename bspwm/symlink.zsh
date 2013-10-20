#! /usr/bin/zsh

if [[ -e ~/.config ]]; then
  if [[ ! ( -d ~/.config ) ]]; then
    echo "There's a ~/.config and it's not a directory..."; exit 1
  else
    if [[ -e ~/.config/bspwm ]]; then
      if [[ ! ( -d ~/.config/bspwm ) ]]; then
        echo "There's a ~/.config/bspwm and it's not a directory..."; exit 1
      else
        if [[ -e ~/.config/bspwm/bspwmrc ]]; then
          echo "There's already a bspwmrc in ~/.config/bspwm/\nIt has been renamed bspwmrc.old"
          mv ~/.config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc.old
        fi
      fi
    else
      mkdir ~/.config/bspwm
    fi
  fi
else
  mkdir ~/.config
fi

mypath=$(exec 2>/dev/null;cd $(dirname $0);unset PWD;/usr/bin/pwd||/bin/pwd||pwd)
ln -s 'mypath'/bspwmrc ~/.config/bspwm/bspwmrc

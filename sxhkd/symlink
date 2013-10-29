#! /usr/bin/zsh

if [[ -e ~/.config ]] ; then
  if [[ ! ( -d ~/.config ) ]] ; then
    echo "There's a ~/.config and it's not a directory..."; exit 1
  else
    if [[ -e ~/.config/sxhkd ]] ; then
      if [[ ! ( -d ~/.config/sxhkd ) ]] ; then
        echo "There's a ~/.config/sxhkd and it's not a directory..."; exit 1
      else
        if [[ -e ~/.config/sxhkd/sxhkdrc ]]; then
          echo "There's already a sxhkdrc in ~/.config/sxhkd/\nIt has been renamed sxhkdrc.old"
          mv ~/.config/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc.old
        fi
      fi
    else
      mkdir ~/.config/sxhkd
    fi
  fi
else
  mkdir -p ~/.config/sxhkd
fi

mypath=$(exec 2>/dev/null;cd $(dirname $0);unset PWD;/usr/bin/pwd||/bin/pwd||pwd)
ln -s $mypath/sxhkdrc ~/.config/sxhkd/sxhkdrc

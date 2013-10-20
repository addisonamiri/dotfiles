#! /usr/bin/zsh

if [[ -e ~/.xinitrc ]]; then
  echo "The file at ~/.xinitrc has been renamed ~/.xinitrc.old"
  mv ~/.xinitrc ~/.xinitrc.old
fi
if [[ -e ~/.Xresources ]]; then
  echo "The file at ~/.Xresources has been renamed ~/.Xresources.old"
  mv ~/.Xresources ~/.Xresources.old
fi

mypath=$(exec 2>/dev/null;cd $(dirname $0);unset PWD;/usr/bin/pwd||/bin/pwd||pwd)
ln -s 'mypath'/xinitrc ~/.xinitrc
ln -s 'mypant'/xresources ~/.Xresources

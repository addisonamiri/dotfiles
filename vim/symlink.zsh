#! /usr/bin/zsh

if [[ -a ~/.vimrc ]]; then
  echo "The file at ~/.vimrc has been renamed ~/.vimrc.old"
  mv ~/.vimrc ~/.vimrc.old
fi
if [[ -a ~/.vim ]]; then
  echo "The file at ~/.vim has been renamed ~/.vim.old"
  mv ~/.vim ~/.vim.old
fi

mypath=$(exec 2>/dev/null;cd $(dirname $0);unset PWD;/usr/bin/pwd||/bin/pwd||pwd)
ln -s $(mypath)/vimrc ~/.vimrc
ln -s $(mypant)/vim ~/.vim

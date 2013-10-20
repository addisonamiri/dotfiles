#! /usr/bin/zsh

case $0 in
  /*) mypath=$0;;
  *) mypath=$PWD/$0;;
esac
echo $mypath

#! /usr/bin/zsh

if [[ -e ~/.oh-my-zsh ]]; then
  if [[ ! ( -d ~/.oh-my-zsh ) ]]; then
    echo "There's a ~/.oh-my-zsh and it's not a directory..."; exit 1
  else
    if [[ -e ~/.oh-my-zsh/themes ]]; then
      if [[ ! ( -d ~/.oh-my-zsh/themes ) ]]; then
        echo "There's a ~/.oh-my-zsh/themes and it's not a directory..."; exit 1
      else
        if [[ -e ~/.oh-my-zsh/themes/thecoolest.zsh-theme ]]; then
          echo "There's already a thecoolest.zsh-theme in ~/.oh-my-zsh/themes\nIt has been renamed thecoolest.zsh-theme.old"
          mv ~/.oh-my-zsh/themes/thecoolest.zsh-theme ~/.oh-my-zsh/themes/thecoolest.zsh-theme.old
        fi
      fi
    else
      mkdir ~/.oh-my-zsh/themes
    fi
  fi
else
  mkdir -p ~/.oh-my-zsh/themes
fi

if [[ -e ~/.zshrc ]]; then
  echo "The file at ~/.zshrc has been renamed .zshrc.old"
  mv ~/.zshrc ~/.zshrc.old
fi

mypath=$(exec 2>/dev/null;cd $(dirname $0);unset PWD;/usr/bin/pwd||/bin/pwd||pwd)
ln -s $mypath/zshrc ~/.zshrc
ln -s $mypath/theme ~/.oh-my-zsh/themes/thecoolest.zsh-theme

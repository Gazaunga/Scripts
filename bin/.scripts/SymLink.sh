#!/bin/bash

dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

bak=~/.bak

dotfiles=".bashrc .bash_aliases .bash_functions .Xresources .Xdefaults utils.sh"
folders="emacs"

read -r -p "Symlink ".bashrc .editorconfig .fehbg .interrobang .lesskey .profile .screenrc .xbindkeysrc .xinitrc .bash_aliases .bash_functions .Xresources .Xdefaults utils.sh? [y/N] " response
response=${response,,}
if [[ $response =~ ^(yes|y)$ ]]; then
echo "Storing dotfiles at $bak ..."
mkdir -p $bak
for file in $dotfiles; do
if [ -L ~/.$file ]; then
rm ~/.$file
elif [ -f ~/.$file ]; then
mv ~/.$file $bak
fi
done

echo "Now creating symbolic links for new dotfiles"
for file in $dotfiles; do
ln -sf $dir/.$file ~/.$file
done
fi

read -r -p "Symlink init.vim? [y/N] " response
response=${response,,}
if [[ $response =~ ^(yes|y)$ ]]; then
  echo "Symlinking neovim"
  mkdir -p ~/.config
  if [ -L ~/.config/nvim ]; then
    rm ~/.config/nvim
  elif [ -f ~/.config/nvim ]; then
    mv ~/.config/nvim $bak
  fi
  ln -sf $dir/nvim ~/.config/nvim
fi

mv .config ~/.config
mv .ssh ~/.ssh
mv bin ~/bin
mv rofi ~/rofi
mv terminator ~/terminator

echo "Done successfully!"

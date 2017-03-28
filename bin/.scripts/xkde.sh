#!/bin/bash
cd ~/
mkdir .config
sudo pacman -Syu --noconfirm -- needed
pacaur -S --noconfirm --noedit xmonad xmonad-contrib xmobar stalonetray dmenu print-manager cups kdenetwork-filesharing scrot \
    cabal-install kde-applications ttf-dejavu ttf-liberation xcompmgr kde-gtk-config systemd-kcm sublime-text \
    alsa-lib alsa-utils mpd moc ttf-iosevka fira-code-git tamzen-font-git typora texlive-full glances howdoi rxvt-unicode
sudo cabal update
cabal install --global yeganesh
cd ~/
mv .xmonad .xmonad.orig
git clone https://github.com/Gazaunga/xmonad-config.git .xmonad
cd ~/bin/.scripts
wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/youtube2mpd.sh
wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/spectrum.sh
wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/food.sh
wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/colorbar.sh
wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/archey-metroid-sh
cd ~/
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.Xresources -O .Xresources
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.editorconfig -O .editorconfig
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.gitconfig -O .gitconfig
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.lesskey -O .lesskey
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.profile -O .profile # needs adjusting
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.screenrc -O .screenrc
git clone https://github.com/Gazaunga/.pandoc.git
git clone https://github.com/Gazaunga/Startpages.git
wget https://raw.githubusercontent.com/Gazaunga/Fed/master/.Xmodmap -O .Xmodmap
cd ~/
mkdir gsimplecal
wget https://raw.githubusercontent.com/Gazaunga/Archi3/master/gsimplecal/config -O config

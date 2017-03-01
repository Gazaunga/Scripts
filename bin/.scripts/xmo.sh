#!/bin/bash
cd ~/
wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/zetup.sh
#wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/font.sh
sudo pacman -Syu --noconfirm -- needed
cd ~/
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
touch ~/.xmobarrc
pacaur -S --noconfirm --noedit python-pip emacs xmonad libghc-xmonad-contrib-dev typora qutebrowser xmobar stalonetray \
    suckless-tools scrot cabal-install xcompmgr
sudo cabal update
sudo cabal install --global yeganesh
cd ~/
mv .xmonad .xmonad.orig
git clone https://github.com/vicfryzel/xmonad-config.git .xmonad
sudo pip install rainbowstream glances ImageScraper
cd ~/
sudo chmod +x zetup.sh
./zetup.sh
sudo chmod +x font.sh
./font.sh

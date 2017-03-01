#!/bin/bash
sudo pacman -Syu --noconfirm -- needed
cd ~/
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
touch ~/.xmobarrc
pacaur -S --noconfirm --noedit python-pip emacs xmonad libghc-xmonad-contrib-dev xmobar stalonetray \
    suckless-tools scrot cabal-install xcompmgr
sudo cabal update
sudo cabal install --global yeganesh
cd ~/
mv .xmonad .xmonad.orig
git clone https://github.com/vicfryzel/xmonad-config.git .xmonad
sudo pip install rainbowstream glances ImageScraper

#!/bin/bash
sudo pacman -Syu
sudo pacman -S bspwm sxhkd
sudo pacman -S xfce4-terminal
mkdir ~/.config
cd ~/.config
mkdir bspwm
mkdir sxhkd
cd bspwm
wget https://raw.githubusercontent.com/baskerville/bspwm/master/examples/bspwmrc
cd ..
cd sxhkd
wget https://raw.githubusercontent.com/baskerville/bspwm/master/examples/sxhkdrc
cd ~
touch .xinitrc
cat "if [ -d /etc/X11/xinit/xinitrc.d ]; then" >> .xinitrc
cat "for f in /etc/X11/xinit/xinitrc.d/?* ; do" >> .xinitrc
cat "[ -x "$f" ] && . "$f"" >> .xinitrc
cat "done" >> .xinitrc
cat "unset f" >> .xinitrc
cat "fi" >> .xinitrc
cat "sxhkd &" >> .xinitrc
cat "xfce4-terminal &" >> .xinitrc
cat "exec bspwm" >> .xinitrc
startx

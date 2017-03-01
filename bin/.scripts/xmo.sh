#!/bin/bash
cd ~/
wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/zetup.sh
#wget https://raw.githubusercontent.com/Gazaunga/Scripts/master/bin/.scripts/font.sh
sudo pacman -Syu --noconfirm -- needed
cd ~/
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
touch ~/.xmobarrc
pacaur -S --noconfirm --noedit python-pip emacs xmonad libghc-xmonad-contrib-dev redshift typora qutebrowser xmobar stalonetray \
    suckless-tools scrot cabal-install xdg-user-dirs xcompmgr
sudo cabal update
sudo cabal install --global yeganesh
cd ~/
mv .xmonad .xmonad.orig
git clone https://github.com/vicfryzel/xmonad-config.git .xmonad
sudo pip install rainbowstream glances ImageScraper
cd ~/
sudo chmod +x zetup.sh
./zetup.sh
#sudo chmod +x font.sh
#./font.sh
xdg-user-dirs-update
cd .config
mkdir qutebrowser
cd qutebrowser
wget https://raw.githubusercontent.com/Gazaunga/dotfiles/master/.config/qutebrowser/qutebrowser.conf
cd ~/.config
mkdir termite
cd termite
wget https://raw.githubusercontent.com/Gazaunga/dotfiles/master/.config/termite/config
cd ~/.config
wget https://raw.githubusercontent.com/Gazaunga/dotfiles/master/.config/compton.conf
wget https://raw.githubusercontent.com/Gazaunga/dotfiles/master/.config/redshift.conf
cd ~/
git clone https://github.com/Gazaunga/.pandoc.git
mkdir rofi
cd rofi
wget https://raw.githubusercontent.com/Gazaunga/OpenBuntu/master/rofi/config
cd ~/
wget https://raw.githubusercontent.com/Gazaunga/OpenBuntu/master/.bashrc -O .bashrc
wget https://raw.githubusercontent.com/Gazaunga/OpenBuntu/master/.bash_profile -O .bash_profile
wget https://raw.githubusercontent.com/Gazaunga/OpenBuntu/master/.bash_functions -O .bash_functions
wget https://raw.githubusercontent.com/Gazaunga/OpenBuntu/master/.bash_aliases -O .bash_aliases
wget https://raw.githubusercontent.com/Gazaunga/OpenBuntu/master/.screenrc -O .screenrc
wget https://raw.githubusercontent.com/Gazaunga/OpenBuntu/master/.xinitrc -O .xinitrc
wget https://raw.githubusercontent.com/Gazaunga/OpenBuntu/master/.xmodmap -O .xmodmap
wget https://github.com/Gazaunga/OpenBuntu/blob/master/keybindings.png
xmonad --recompile

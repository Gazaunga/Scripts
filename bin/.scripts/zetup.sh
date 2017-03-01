cd ~/
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/Gazaunga/Scripts.git
cd Scripts
mv /bin ~/bin
cd ~/
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
git pull && git submodule update --init --recursive

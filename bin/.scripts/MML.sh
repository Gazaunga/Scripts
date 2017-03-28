#!/bin/bash
sudo apt-get install wget make gawk gcc bc genisoimage
wget http://minimal.linux-bg.org/download/minimal_linux_live_20-Jan-2017_src.tar.xz
tar xJf minimal_linux_live_20-Jan-2017_src.tar.xz
sh build_minimal_linux_live.sh
# Minimal Linux Live

#!/bin/bash
sudo dnf -y update
sudo dnf -y install dnf-plugin-system-upgrade
sudo dnf -y system-upgrade download --refresh --releasever=25 --allowerasing
sudo dnf -y system-upgrade reboot

#!/bin/bash

set -ex
sudo apt update

sudo DEBIAN_FRONTEND=oninteractive \
   apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

sudo apt install --assume-yes ubuntu-desktop

sudo apt install --assume-yes screen

wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

sudo apt install --assume-yes ./chrome-remote-desktop_current_amd64.deb

sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

sudo service lightdm stop


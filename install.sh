#!/bin/sh

if ! $(lsb_release -a 2>/dev/null | grep "Ubuntu 13.10" > /dev/null); then
  echo "This is designed to run on Lubuntu 13.10. This is not even an Ubuntu 13.10. It will break."
  exit 1
fi

if ! [ -d /etc/xdg/lubuntu ]; then
  echo "This is designed to run on Lubuntu 13.10. This seems to be an Ubuntu 13.10 or derivative. Use with caution."
  exit 1
fi

# Install dotfiles
cp -rf dotfiles/.[a-z]* ~

# Window manager: Awesome 3.5 (lubuntu bundles 3.4)
sudo add-apt-repository ppa:klaus-vormweg/awesome
sudo apt-get update
sudo apt-get install awesome

# Terminal: urxvt
sudo apt-get install rxvt-unicode

# Font: terminus
apt-get install xfonts-terminus

# Icons: ACYL #55af66 (Dependencies)
apt-get install python-glade2 python-gt

# Editor: vim
apt-get install vim-gnome

#!/bin/bash

# update system
sudo apt-get update; sudo apt-get upgrade -y
sudo apt-get install
# input method
sudo apt-get install gcin -y
sudo apt-get install vim tmux -y
sudo apt-get install git tig -y

# Install vgod's vimrc
wget -O - https://raw.github.com/vgod/vimrc/master/auto-install.sh | sh

# GL
sudo apt-get install freeglut3 freeglut3-dev -y
sudo apt-get install libxmu-dev -y


# Download my Caffe package
git clone https://github.com/kvzhao/caffe-dependecies-installation.git



#!/bin/bash

# System update
sudo apt-get update; sudo apt-get upgrade -y
sudo apt-get install build-essential -y
sudo apt-get install gcc-4.6 g++-4.6 gcc-4.6-multilib g++-4.6-multilib -y

# boost
sudo apt-get install libboost1.55-all-dev -y

# GOOGLE
sudo apt-get install protobuf-c-compiler protobuf-compiler -y
sudo apt-get install libgflags-dev -y
sudo apt-get install libprotobuf-dev -y

wget https://google-glog.googlecode.com/files/glog-0.3.3.tar.gz
tar -vxf glog-0.3.3.tar.gz
cd glog-0.3.3
./configure; make -j4; sudo make install
cd ~/

#BLAS
sudo apt-get install libgsl0-dev -y
sudo apt-get install libblas3 libblas3gf liblapack-dev libsnappy-dev libatlas-dev libopenblas-dev -y

# OpenCV
sudo apt-get install libopencv-* -y
sudo apt-get install libhdf5-dev libleveldb-dev liblmdb-dev -y
sudo apt-get install python-protobuf python-numpy python-skimage python-pydot python-pandas -y

# CUDA 5.5
cd ~/Downloads/
wget http://developer.download.nvidia.com/compute/cuda/5_5/rel/installers/cuda_5.5.22_linux_64.run
mkdir ~/Downloads/pkg
mkdir ~/Downloads/pkg/cuda_install
mv cuda_5.5.22_linux_64.run ~/Downloads/pkg
cd ~/Downloads/pkg
chmod +x cuda_5.5.22_linux_64.run
sudo ./cuda_5.5.22_linux_64.run -extract=~/Downloads/pkg/cuda_install
sudo ./cuda_install/cuda-linux64-rel-5.5.22-16488124.run
sudo ./cuda_install/cuda-samples-linux-5.5.22-16488124.run
cd ~/
sudo apt-get install libcudart5.5 libcurand5.5 libcublas5.5 -y


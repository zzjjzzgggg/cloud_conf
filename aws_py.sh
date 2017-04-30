#! /bin/bash

# update
sudo apt-get update

# install pip
sudo apt-get install python3-pip git -y
pip3 install numpy
pip3 install networkx

# clone
git clone https://github.com/zzjjzzgggg/python_packages.git 

# setup python3 local library
PYV=`python3 -c "import sys;print('{0[0]}.{0[1]}'.format(sys.version_info))"`
mkdir -p ~/.local/lib/python$PYV/site-packages
cd python_packages
pwd | tee ~/.local/lib/python$PYV/site-packages/mytools.pth

cd ~



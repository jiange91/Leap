#!/bin/bash

#install gcc
sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt update
sudo apt install gcc-9 g++-9 -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 50
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 50

#install make tools
sudo apt remove --purge --auto-remove cmake -y
sudo apt update
sudo apt install lsb-release -y
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" -y
sudo apt update
sudo apt install cmake -y
cmake --version

sudo apt install ninja-build -y

#install python env
sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev liblzma-dev tk-dev
cd /tmp/
wget https://www.python.org/ftp/python/3.8.10/Python-3.8.10.tgz
tar xzf Python-3.8.10.tgz
cd Python-3.8.10
sudo ./configure --enable-optimizations --with-lto
sudo make -j32
sudo make altinstall
sudo /usr/local/bin/python3.8 -m pip install --upgrade pip setuptools wheel
cd /usr/bin
sudo unlink python
sudo ln -s /usr/local/bin/python3.8 python
cd ~
python --version


#!/bin/bash

sudo apt-get install git-core -y
git clone git://github.com/ry/node.git

cd node
./configure
make
sudo make install

ln -s bin/node /usr/local/bin
node --version

echo "Installing node package manager (npm)"
sudo chown -R $USER /usr/local
curl http://npmjs.org/install.sh | sh

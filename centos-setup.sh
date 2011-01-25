#!/bin/bash

mkdir -p /mnt/ephemeral
mount /dev/sda2 /mnt/ephemeral
mkdir -p /mnt/ephemeral/workspace
rm -rf /opt/*
yum groupinstall 'Development Tools'

wget http://nodejs.org/dist/node-v0.2.5.tar.gz
tar xf node-v0.2.5.tar.gz
cd node-v0.2.5
./configure --prefix /opt/nodejs
make
make install

ln -s /opt/nodejs/bin/node /usr/local/bin
node --version

#!/bin/bash

echo 'Getting latest IPFS tarball'

# Update this when new version is released
wget https://ipfs.io/ipns/dist.ipfs.io/go-ipfs/v0.4.13/go-ipfs_v0.4.13_linux-amd64.tar.gz

echo 'Extracting go-ipfs'
tar xvfs go-ipfs_v0.4.13_linux-amd64.tar.gz

echo 'Installing go-ipfs'
cd go-ipfs
./install.sh

echo 'Initialising ipfs'
cd ~
ipfs init

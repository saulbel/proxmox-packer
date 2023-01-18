#!/bin/bash

# install wget and unzip
sudo apt update
sudo apt install unzip wget -y

# download packer
wget https://releases.hashicorp.com/packer/1.8.0/packer_1.8.0_linux_amd64.zip

# unzip it
unzip packer_1.8.0_linux_amd64.zip

# move it to /usr/local/bin
sudo mv packer /usr/local/bin

# remove zip
rm packer_1.8.0_linux_amd64.zip

# packer debug
export PACKER_LOG=1
export PACKER_LOG_PATH="packerlog.txt"
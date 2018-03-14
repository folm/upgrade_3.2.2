#!/bin/bash
clear

wget https://github.com/folm/folm/releases/download/v3.2.2/folm-3.2.2-ubuntu16.04.zip
unzip folm-3.2.2-ubuntu16.04.zip
cd folm-3.2.2-ubuntu16.04
./folm-cli stop
./folmd --reindex
./folm-cli getinfo

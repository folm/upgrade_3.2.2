#!/bin/bash
clear

# backup
mkdir ~/folm_backup
cp -r ~/.folm/wallet.dat ~/folm_backup
cp -r ~/.folm/folm.conf ~/folm_backup
cp -r ~/.folm/masternode.conf ~/folm_backup

#get last version
wget https://github.com/folm/folm/releases/download/v3.2.2/folm-3.2.2-ubuntu16.04.zip
unzip folm-3.2.2-ubuntu16.04.zip
cd folm-3.2.2-ubuntu16.04
./folm-cli stop
./folmd --reindex
./folm-cli getinfo

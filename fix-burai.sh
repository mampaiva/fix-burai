#!/bin/bash

#author: Mateus Augusto Martins de Paiva
#use sudo or su to run this script

echo "deb http://old-releases.ubuntu.com/ubuntu/ artful main restricted universe multiverse" >> /etc/apt/sources.list #add the ubuntu 17.10 repositories

apt update --allow-unauthenticated
apt update --allow-insecure-repositories

echo "Package:  *openjfx*  
Pin: release n=artful
Pin-Priority: 1001   

Package:  *libopenjfx*  
Pin: release n=artful
Pin-Priority: 1001   

Package:  *openjdk-8*  
Pin: release n=artful
Pin-Priority: 1001   " >> /etc/apt/preferences.d/openjfx # change the priority of package versions

apt upgrade
apt install openjdk-8-jdk
apt install openjfx

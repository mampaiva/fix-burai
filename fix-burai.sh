#!/bin/bash

#author: Mateus Augusto Martins de Paiva
echo "## EOL upgrade sources.list
# Required
deb http://old-releases.ubuntu.com/ubuntu/ artful main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ artful-updates main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ artful-security main restricted universe multiverse

# Optional
#deb http://old-releases.ubuntu.com/ubuntu/ artful-backports main restricted universe multiverse" >> /etc/apt/sources.list #add the ubuntu 17.10 repositories

apt update 

echo "Package:  *openjfx*  
Pin: release n=artful
Pin-Priority: 1001   

Package:  *libopenjfx*  
Pin: release n=artful
Pin-Priority: 1001   " >> /etc/apt/preferences.d/openjfx # change the priority of package versions

apt upgrade

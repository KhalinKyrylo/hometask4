#!/bin/bash

sudo useradd -m -p $(openssl passwd -1 -salt SALT PASS) adminuser
sudo usermod -a -G sudo adminuser

sudo useradd -m poweruser
sudo passwd -d poweruser
echo 'poweruser ALL=(ALL:ALL) /usr/sbin/iptables' >> /etc/sudoers
sudo usermod -a -G root poweruser

sudo usermod -a -G adminuser poweruser
ln -s /etc/mtab /home/poweruser/softlink
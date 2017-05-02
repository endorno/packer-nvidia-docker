#!/bin/bash
set -ex
apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade                                    
#apt-get upgrade -y
echo "UseDNS no" >> /etc/ssh/sshd_config

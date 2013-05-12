#! /bin/bash

echo "Enter server hostname: ";

hostname="";
while [[ $hostname = "" ]]; do read hostname; done;
hostname_short=`echo $hostname | sed 's/\..*//'`

sudo echo $hostname > /etc/hostname
hostname $hostname
sudo echo -e "127.0.0.1\tlocalhost $hostname $hostname_short" > /etc/hosts

echo -e "Done.\n\n";
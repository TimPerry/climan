#! /bin/bash

echo -e "Setting up portsentry\n";

apt-get install portsentry

# enable TCP and UDP blocking
sed -i 's/BLOCK_UDP="[0-9]"/BLOCK_UDP="1"/g' /etc/portsentry/portsentry.conf
sed -i 's/BLOCK_TCP="[0-9]"/BLOCK_TCP="1"/g' /etc/portsentry/portsentry.conf

echo -e "Done\n\n";
#! /bin/bash

echo -e "Disabling old motd\n"
sudo chmod -x /etc/update-motd.d/*

echo -e "Installing climan motd\n";
sudo cp /usr/lib/climan/install/template_files/00-climan /etc/update-motd.d/

echo -e "Done.\n\n";
#! /bin/bash

echo -e "Disabling old motd\n"
sudo chmod -x /etc/update-motd.d/*

echo -e "Installing climan motd\n";
sudo cp $CLIMAN_INSTALL_DIR/template_files/00-climan /etc/update-motd.d/
sudo chmod +x /etc/update-motd.d/00-climan

echo -e "Done.\n\n";
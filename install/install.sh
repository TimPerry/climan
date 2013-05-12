#! /bin/bash

echo "Making install scripts executable, (enter password if needed)";
sudo chmod -R +x install_scripts

./setup_lamp.sh
./setup_chroot.sh
./setup_suexec.sh
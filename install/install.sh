#! /bin/bash

echo "Making install scripts executable, (enter password if needed)";
sudo chmod -R +x ./install_scripts
export CLIMAN_INSTALL_DIR=`pwd`;

for SCRIPT in ./install_scripts/*
do
	if [ -f $SCRIPT -a -x $SCRIPT ]
	then
		$SCRIPT
	fi
done
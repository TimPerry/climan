#! /bin/bash

echo "Making install scripts executable, (enter password if needed)";
sudo chmod -R +x /usr/lib/climan/install_scripts

for SCRIPT in /usr/lib/climan/*
do
	if [ -f $SCRIPT -a -x $SCRIPT ]
	then
		$SCRIPT
	fi
done
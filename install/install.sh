#! /bin/bash

echo "Making install scripts executable, (enter password if needed)";
sudo chmod -R +x ./install_scripts

pwd=`pwd`;
export CLIMAN_DIR=`dirname $pwd`;

for SCRIPT in $CLIMAN_DIR/install_scripts/*
do
	if [ -f $SCRIPT -a -x $SCRIPT ]
	then
		$SCRIPT
	fi
done
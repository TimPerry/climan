#! /bin/bash

echo -e "Installing to /usr/lib/climan, enter your password if requested\n";

sudo mkdir /usr/lib/climan
cp -r $CLIMAN_DIR/core/* /usr/lib/climan

echo -e "\n\nInstalled to /usr/lib/climan.\n";

read -p "Please the web root location: ";
web_root_loc=$REPLY;

read -p "Please enter the database username: ";
db_username=$REPLY;

read -p "Thanks and now the database password: ";
db_password=$REPLY;

clear;

echo -e "You entered the following details: \n";
echo -e "Web root: $web_root_loc\n";
echo -e "Database username: $db_username\n";
echo -e "Database password: $db_password\n";

read -p "Are these correct? (y/n): ";

if [ "$REPLY" == "y" ] || [ "$REPLY" == "yes" ];
then
	sudo chmod -R a+rw /etc/climan/;
	sudo printf "web_root: $web_root_loc\ndb_username: $db_username\ndb_password: $db_password" > /etc/climan/main.conf;
	echo -e "Configuration stored.\n";
else
	echo -e "Exiting!\n";
fi;
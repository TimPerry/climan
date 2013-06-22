#! /bin/bash

echo -e "Installing to /opt/climan, enter your password if requested\n";

if [ ! -d '/opt/climan' ]
then

	sudo mkdir /opt/climan;
	sudo cp -r $CLIMAN_DIR/core/* /opt/climan;

	echo -e "Setting permissions";
	sudo chmod -R 755 /opt/climan;

	echo -e "\n\nInstalled to /opt/climan.\n";

fi

if [ ! -d '/etc/climan' ]
then
	echo -e "Creating config directory.\n";

	sudo mkdir /etc/climan;

	echo -e "Setting permissions";
	sudo chmod -R 755 /opt/climan;

	echo -e "Config directory setup.\n";
	
fi

read -p "Please the web root location: ";
web_root_loc=$REPLY;

read -p "Please enter the database name: ";
db_name=$REPLY;

read -p "Please enter the database username: ";
db_username=$REPLY;

read -p "Thanks and now the database password: ";
db_password=$REPLY;

clear;

echo -e "You entered the following details: \n";
echo -e "Web root: $web_root_loc\n";
echo -e "Database: $db_name\n";
echo -e "Database username: $db_username\n";
echo -e "Database password: $db_password\n";

read -p "Are these correct? (y/n): ";

if [ "$REPLY" == "y" ] || [ "$REPLY" == "yes" ];
then
	
	sudo chmod -R a+rw /etc/climan/;
	sudo printf "web_root: $web_root_loc\ndb_name: $db_name\ndb_username: $db_username\ndb_password: $db_password" > /etc/climan/main.conf;
	echo -e "Configuration stored.\n";
	
	echo -e "Creating database tables...\n";
	sudo mysql -u$db_username -p$db_password $db_name < $CLIMAN_DIR/install/template_files/db_tables.sql;
	echo -e "Tables setup.\n";
	
else
	echo -e "Exiting!\n";
	exit;
fi;
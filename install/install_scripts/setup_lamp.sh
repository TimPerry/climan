echo -e "Installing LAMP\n";

sudo apt-get install tasksel
sudo tasksel install lamp-server

echo -e "Done.\n\n";
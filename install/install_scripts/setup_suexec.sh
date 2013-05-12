#! /bin/bash

# install the custom version of apache
echo -e "Installing custom apache build\n";
sudo apt-get install apache2-mpm-worker libapache2-mod-fcgid apache2-suexec-custom php5-cgi

# ensure all modules are enabled
echo -e "Enabling required modules\n";
sudo a2enmod fcgid suexec actions

# copy the fcgi config across
echo -e "Settting up fcgi config\n";
sudo cp ../template_files/php5-fcgid.conf /etc/apache2/conf.d/

# add the directory
echo -e "Adding fcgi-bin directory\n";
sudo mkdir /var/www/fcgi-bin/

# copy across the fcgi bin
echo -e "Copying across fcgi-bin file\n";
sudo cp ../template_files/php5-fcgi /var/www/fcgi-bin/

# setup permissions
echo -e "Setting up permissions\n";
sudo chmod -R 755 /var/www/fcgi-bin/
sudo chown -R www-data:www-data /var/www/fcgi-bin/

# restart apache
echo -e "Restarting apache\n";
sudo service apache2 restart

echo -e "Done.\n\n";
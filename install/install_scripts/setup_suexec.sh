#! /bin/bash

# install the custom version of apache
echo -e "Installing custom apache build\n";
apt-get install apache2-mpm-worker libapache2-mod-fcgid apache2-suexec-custom php5-cgi

# ensure all modules are enabled
echo -e "Enabling required modules\n";
a2enmod fcgid suexec actions

# copy the fcgi config across
echo -e "Settting up fcgi config\n";
cp template_files/php5-fcgid.conf /etc/apache2/conf.d/

# copy across the fcgi bin
echo -e "Copying across fcgi-bin file\n";
cp ../template_files/php5-fcgi /var/www/fcgi-bin/

# setup permissions
echo -e "Setting up permissions\n";
chmod -R 755 /var/www/fcgi-bin/
chown -R www-data:www-data /var/www/fcgi-bin/

echo -e "Done.\n\n";
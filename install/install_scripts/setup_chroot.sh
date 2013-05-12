#! /bin/bash
echo -e "Adding sftp user group\n";
sudo groupadd sftpusers

echo -e "Adding custom sshd config\n";
sudo mv /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sudo cp /usr/lib/climan/install/template_files/sshd_config /etc/ssh/

echo -e "All done, restarting ssh:\n";

sudo service ssh restart

echo -e "\nChroot setup, add users to the sftpusers group to lock them down.\n";
echo -e "The users will be locked to /var/www/sites/<username>, so ensure that directory exists\n";
echo -e "Your old ssh config files has been moved to /etc/ssh/sshd_config.bak, restore any options back and remember the server is now running on port 2020.\n";

echo -e "Done.\n\n";
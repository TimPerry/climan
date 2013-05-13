#! /bin/bash

echo -e "Setting up antivirus.\n";

aptitude -y install clamav
freshclam

echo -e "Setting up daily virus scan.\n";

echo "0 6 * * * root clamscan --infected --remove --recursive /" >> /etc/crontab
 
echo -e "Done\n\n";
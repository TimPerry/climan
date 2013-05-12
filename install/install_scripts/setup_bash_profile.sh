echo -e "Installing ssh server\n";

sudo apt-get install openssh-server openssh-client

echo -e "Setting up bash profile (enables use of util functions)\n";

sudo cp /usr/lib/climan/install/template_files/.bash_profile /root

chmod -R +x /usr/lib/climan/bin

echo -e "Done.\n\n";
echo -e "Installing ssh server\n";

sudo apt-get install openssh-server openssh-client

echo -e "Setting up bash profile (enables use of util functions)\n";

sudo cp ../template_files/.bash_profile ~/

echo -e "Done.\n\n";
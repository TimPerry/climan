#CLIMAN

## Install

Setup hosts file e.g. 127.0.0.1 	localhost applicious.co applicious

	echo "127.0.0.1		localhost <primary_domain.tld> <primary_domain>" 

Set your hostname

	hostname applicious
	echo "applicious" > /etc/hostname

	apt-get install git
	git clone https://github.com/iceicetimmy/climan /usr/lib/climan
	cd /usr/lib/climan/install
	chmod +x install.sh
	./install.sh	

## Usage

	climan

### Utils

You can use any of the utils by just typing their name, as the custom bash profile modifies your PATH enviroment to include all climan utils.

For example to view all the logs for apl_2013 you type:

	weblog apl_2013
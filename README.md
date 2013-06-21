#CLIMAN

## Install

	apt-get install git
	git clone https://github.com/iceicetimmy/climan
	cd climan/install
	chmod +x install.sh
	./install.sh

The install will then install run and install to /usr/lib/climan.

A config file is also created in /etc/climan

## Usage

	climan

### Utils

You can use any of the utils by just typing their name, as the custom bash profile modifies your PATH enviroment to include all climan utils.

For example to view all the logs for apl_2013 you type:

	weblog apl_2013
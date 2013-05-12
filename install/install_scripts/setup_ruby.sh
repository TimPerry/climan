#! /bin/bash

echo -e "Installing Ruby\n";

apt-get install rubygems

\curl -L https://get.rvm.io | 
  bash -s stable --ruby --autolibs=enable --auto-dotfiles
  
source /usr/local/rvm/scripts/rvm 
 
rvm install 1.9.3
gem install rbcurse

echo -e "Done\n\n";
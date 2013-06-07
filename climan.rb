require_relative 'classes/MenuManager.rb'

# clear all output
system "clear"

# show the main menu
MenuManager.new do | menu |
  
  menu.set_title "Main Menu"
  
  menu.add_item "Domain Management" do 
    load "menus/domain_management.rb"
  end
  menu.add_item "User Management" do
    puts "Managing users!"
  end
  menu.add_item "Server Management" do
    puts "Managing domains!"
  end
  menu.add_item "Change Settings" do
    puts "Chaning settings"
  end
  menu.add_item "Quit" do
    exit
  end
  
end
require_relative 'classes/MenuManager.rb'

MenuManager.new do | menu |
  
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
require_relative '../classes/MenuManager.rb'

MenuManager.new do | menu |
  
  menu.set_title "Choose domain"
  
  menu.add_item "www.forepoint.co.uk" do 
    puts "Loading www.forepoint.co.uk details"
  end
  menu.add_item "Quit" do
    exit
  end
  
end
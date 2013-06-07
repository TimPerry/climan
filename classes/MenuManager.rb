require_relative 'MenuItem.rb'

class MenuManager
  
  @menu_items
    
  def initialize
    
    # create a array to hold the menu items
    @menu_items = Array.new
    
    # yield to grab the items
    yield self
    
    # display the menu items
    @menu_items.each_with_index do | item, i |
      puts [ i+1, ". ", item.get_title ].join( "" )
    end
    
    # prompt for input
    puts "\r\nPlease choose:\r\n"
    
    # read the option
    option = gets.chomp.to_i - 1
    
    # newline
    puts "\r\n"
    
    # perform the action if input is valid
    if option >= 0 && option <= @menu_items.length
      @menu_items[ option ].do_action
    else 
      puts "Invalid option"
    end
    
  end
  
  def add_item( title, &block )
    @menu_items.push( MenuItem.new( title, &block ) )
  end
  
end
require_relative 'MenuItem.rb'

class MenuManager
  
  # attrs
  @menu_items
  @title
  
  # seutp the menu
  def initialize
    
    # create a array to hold the menu items
    @menu_items = Array.new
    
    # yield to grab the items
    yield self
    
    #output the menu title if it has one
    puts @title if @title
    
    # display the menu items
    @menu_items.each_with_index do | item, i |
      puts [ i+1, ". ", item.get_title ].join( "" )
    end
    
    # prompt for input
    puts "\r\nPlease choose:\r\n"
    
    # loop untill we get valid input
    while ( option = ( gets.chomp.to_i - 1 ) )
      # perform the action if input is valid
      if option >= 0 && option <= @menu_items.length
        system "clear"
        @menu_items[ option ].do_action
        break;
      else 
        puts "Invalid option, please choose again:\r\n"
      end    
    end
    
  end
  
  # set the title of the menu
  def set_title( title ) 
    @title = title
  end
  
  # add an item to the menu
  def add_item( title, &block )
    @menu_items.push( MenuItem.new( title, &block ) )
  end
  
end
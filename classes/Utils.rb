class Utils
  
  # check if users are enabled
  def self.users_enabled
    return false
  end
  
  # prompt a user with a given question
  def self.prompt_confirm( prompt_msg )
    
    exec "clear"
    puts prompt_msg
    
    # loop until we get a valid response
    while ( response = gets.chomp.downcase )
      # if a valid response was given, return 
      if ( response == "yes" || response == "no" || response == "y" || response == "n" )
        return ( response == "yes" || response == "y" )
      else
        # invalid reponse, request input again
        exec "clear"
        puts "Invalid response, please enter y/yes or n/no: "
      end
    end
    
  end
  
  # gets the config option if it exists
  def self.get_config_option( option )
    
    # grab the config from file if its not already loaded
    config = get_config
    # return the option if it exists
    return config[ option ] if config[ option ]
  
  end
  
  # private methods
  private
    
  # gets the main config
  def self.get_config
    
    begin
      YAML.load( File.read( "config.yaml" ) 
    rescue Exception => e
      puts "Failed to load config file, invalid configuration please remember to use 2 spaces and not tabs!"
      exit
    end
    
  end
  
end
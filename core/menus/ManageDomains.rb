require_relative '../classes/MenuManager.rb'
require_relative '../classes/Utils.rb'
require_relative '../classes/DatabaseManager.rb'

select_domain = Proc.new { |domain|
  load '../menus/manage_domain.rb';
};

MenuManager.new do | menu |
  
  menu.set_title "Choose domain"

  dm = DatabaseManager.new
  dm.query "select * from ".each do |site|
    menu.add_item site[ 'site_name' ], select_domain
  end
  
  # menu.add_item "Add domain" do 
#     puts "Please enter the domain name: \n"
#     url = gets.chomp
#     sitename, *domain_suffix = url.split( "." )
#     dirname = [ Utils::get_web_root, sitename ].join( "/" )
#     password = Array.new(8){[*'0'..'9', *'a'..'z', *'A'..'Z','%',^'','@','``','~','*','&'].sample}.join("")
#     
#     # Creating user
#     if Utils::users_enabled      
#       exec [ "useradd -D -g sftpusers -b ", dirname, sitename ].join( " " )
#       exec [ "passwd", sitename, password ].join( " " )
#     end
#     
#     # Check if we need to create mysql users and database
#     if Utils::prompt_confirm "Do you need a database?\r\n"
#       
#     end
#       
#     # create the directory
#     puts "Creating directory..."
#     Dir.mkdir( dirname ) unless File.exists?( dirname )
#     
#     # setup apache
#     puts "Setting up apache...\r\n"
#     virtual_host = [ "<VirtualHost *:80>\n\n\tServerName ", sitename ];
#     
#     if Utils::prompt_confirm "Do you need the www. alias?\r\n"
#       virtual_host.push( "\n\n\tServerAlias www.", url )
#     end
# 
#     virtual_host.push( "\n\tDocumentRoot /var/www/sites/$sitename\n\n\tErrorLog /var/www/logs/$sitename\n\n\t</VirtualHost>" );
#     
#     exec [ "echo", virtual_host, ">", [ "/etc/apache2/sites-available/", sitename ].join( "" ) ];
#     
#     # Install wordpress?
#     if Utils::prompt_confirm( "Do you want to install Wordpress?\r\n" )
# 
#       puts "Installing wordpress..."
#       exec( "wget http://www.wordpress.org/latest.zip" )
#       
#       # Install ForeCMS?
#       if Utils::prompt_confirm( "Do you want to install ForeCMS?\r\n" )
#         
#         client = Octokit::Client.new( :login => "iceicetimmy", :oauth_token => "562613bc0e526ac0e83784bbe93f6632b52b3e85" )
#         client.download( "forepoint/ForeCMS", [ dirname, "wp-content/plugins/ForeCMS" ].join( "/" ) )
#         
#         # Install WP Framework?
#         if Utils::prompt_confirm( "Do you want to install WP Framework?\r\n" )
#           client.download( "forepoint/Forepoint-WP-Framework", [ dirname, "wp-content/themes", sitename ].join( "/" ) )
#           
#           # Install Sass package?
#           if Utils::prompt_confirm( "Do you want to install the SASS package?\r\n" )
#             client.download( "forepoint/Forepoint-SASS-Framework", [ dirname, "wp-content/themes", sitename ].join( "/" ) )
#           end
# 
#         end
# 
#       end
# 
#     end
# 
#     puts "All done, here are the details: \r\n";
#     puts [ "Root Directory: ", dirname, "\r\n" ].join( "" )
#     puts [ "Username: ", sitename, "\r\n" ].join( "" )
#     puts [ "Password: ", password, "\r\n" ].join( "" )
#     puts "\r\n\r\nPlease note the username/password is for SFTP and database connections.\r\n\r\n"
# 
#   end
  menu.add_item "Quit" do
    exit
  end
  
end
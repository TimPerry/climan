require 'mysql2'

class DatabaseManager

  @con
  
  def initialize
    @con = Mysql.new 'localhost', Utils::get_config_option( 'db_username' ), Utils::get_config_option( 'db_password' )
  end
  
  def get_results( sql )
    @con.query sql
  end
  
end
class MenuItem
  
  @title
  @action
  
  def initialize( title, &block )
    @title = title
    @action = block
  end
  
  def do_action
    @action.call
  end
  
  def get_title
    @title
  end
  
end
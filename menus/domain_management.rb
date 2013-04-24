require 'rbcurse/core/util/app'
require 'rbcurse/core/include/appmethods'
require 'rbcurse/core/widgets/rlist'

# just a simple test to ensure that rbasiclistbox is running inside a container.
App.new do 
  
  flow :margin_top => 5, :height => FFI::NCurses.LINES-2 do
    lb = listbox :list => ["www.springfield.local", "shelbyville.local"], :suppress_borders => false, :title => "[ Domains ]",
      :left_margin => 0, :width_pc => 100, :name => 'lst_domains'
  end
 
end
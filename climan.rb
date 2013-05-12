require 'rbcurse/core/util/app'

  App.new do 

    header = app_header "rbcurse #{Rbcurse::VERSION}", :text_center => "CLIMAN", :text_right => "Main menu"

    stack :margin_top => 10, :margin_left => 15 do
      w = 60
      menulink( :text => "&Domain management", :width => w, :description => "CRUD domain tools" ) do |s, *stuff|
        load './menus/domain_management.rb'
      end
      blank
      menulink :text => "&Users management", :width => w, :description => "CRUD user tools"  do |s, *stuff|
        load './menus/user_management.rb'
      end
      blank
      menulink :text => "&Change settings", :width => w, :description => "Change how CLIMAN works"  do |s, *stuff|
        load './menus/settings.rb'
      end
      blank
      menulink :text => "&Quit", :width => w, :description => "Close CLIMAN"  do |s, *stuff|
        quit
      end
      @form.bind(:ENTER) do |w|
        header.text_right = w.text
      end
    end # stack
  end # app

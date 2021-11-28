require "test_helper"

class MenuTest < ActiveSupport::TestCase
  
  test "Should not save without title" do
    menu = Menu.new 
    assert_not menu.save 
  end

  test "Menu 'two' should have 3 menu items" do 
    menu = Menu.find_by(title:'seafood_1')
    assert_equal 3, menu.menuitems.size
  end  
end

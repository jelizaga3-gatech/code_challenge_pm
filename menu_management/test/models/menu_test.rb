require "test_helper"

class MenuTest < ActiveSupport::TestCase
  
  test "Should not save without title" do
    menu = Menu.new 
    assert_not menu.save 
  end
end

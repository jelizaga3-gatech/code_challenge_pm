require "test_helper"

class MenuitemTest < ActiveSupport::TestCase
  test 'Each menu item should have a price' do 
    seafood_menu = Menu.find_by(title:"seafood_1")
    menu_item = Menuitem.new(menu:seafood_menu)
    assert_not menu_item.save
  end
end

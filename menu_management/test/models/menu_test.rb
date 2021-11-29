require "test_helper"

class MenuTest < ActiveSupport::TestCase
  
  test "Should not save without title" do
    menu = Menu.new 
    assert_not menu.save 
  end

  test "Menu 'seafood_1' should have 3 menu items" do 
    menu = Menu.find_by(title:'seafood_1')
    assert_equal 3, menu.menuitems.size
  end  

  test "Create and save menu" do
    menu = Menu.new(title:"New menu title")
    assert menu.save 
  end

  test "Create and save menu and assign to restaurant" do
    seafood_restaurant = Restaurant.find_by(name:"SeafoodRestaurant")
    assert_equal 0, seafood_restaurant.menus.size
    menu = Menu.new(title:"New menu title")
    seafood_restaurant.menus << menu
    assert seafood_restaurant.save 
    assert_equal 1, seafood_restaurant.menus.size
  end
end

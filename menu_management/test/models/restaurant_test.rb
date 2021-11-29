require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  test "Add multiple menus to restaurant" do
    restaurant = Restaurant.find_by(name:"SeafoodRestaurant")
    assert restaurant.save
    assert_equal 0, restaurant.menus.size
    menu_1 = Menu.new(title:"Seafood menu")
    menu_2 = Menu.new(title:"Drink menu")
    menu_3 = Menu.new(title:"Dessert menu")
    restaurant.menus << [menu_1,menu_2,menu_3]
    assert restaurant.save
    assert_equal 3, restaurant.menus.size
  end
end
